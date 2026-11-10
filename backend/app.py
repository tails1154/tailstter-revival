"""HTTP bridge from the 2011 Twitter API client to Bluesky's AT Protocol."""
import hashlib, json, os, re, secrets, sqlite3, time
from datetime import datetime, timezone
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import parse_qs, urlencode, urlparse
from urllib.request import Request, urlopen

DB_PATH=Path(os.environ.get("TAILSTTER_DB","tailstter.sqlite3"))
BSKY_SERVICE=os.environ.get("TAILSTTER_BSKY_SERVICE","https://bsky.social").rstrip("/")
BSKY_PUBLIC=os.environ.get("TAILSTTER_BSKY_PUBLIC","https://public.api.bsky.app").rstrip("/")

def connect():
    DB_PATH.parent.mkdir(parents=True,exist_ok=True)
    c=sqlite3.connect(str(DB_PATH),timeout=15); c.row_factory=sqlite3.Row
    c.execute("CREATE TABLE IF NOT EXISTS sessions(token TEXT PRIMARY KEY,service TEXT NOT NULL,did TEXT NOT NULL,handle TEXT NOT NULL,access_jwt TEXT NOT NULL,refresh_jwt TEXT NOT NULL,created_at INTEGER NOT NULL)")
    return c

def at_request(service,method,endpoint,params=None,body=None,token=None):
    url=service.rstrip("/")+"/xrpc/"+endpoint
    if params: url+="?"+urlencode(params,doseq=True)
    payload=None if body is None else json.dumps(body,separators=(",",":")).encode()
    headers={"Accept":"application/json"}
    if payload is not None: headers["Content-Type"]="application/json"
    if token: headers["Authorization"]="Bearer "+token
    req=Request(url,data=payload,headers=headers,method=method)
    try:
        with urlopen(req,timeout=20) as r:
            raw=r.read().decode("utf-8")
            return json.loads(raw) if raw else {}
    except HTTPError as e:
        raw=e.read().decode("utf-8","replace")
        try: detail=json.loads(raw)
        except ValueError: detail={"message":raw[:400]}
        raise BridgeError(e.code,detail.get("message") or detail.get("error") or "Bluesky request failed")
    except (URLError,TimeoutError) as e:
        raise BridgeError(502,"Could not reach Bluesky: "+str(e))

class BridgeError(Exception):
    def __init__(self,status,message): self.status,self.message=status,message

def public(endpoint,params=None): return at_request(BSKY_PUBLIC,"GET",endpoint,params=params)

def session_request(c,s,method,endpoint,params=None,body=None):
    try: return at_request(s["service"],method,endpoint,params,body,s["access_jwt"])
    except BridgeError as e:
        if e.status!=401: raise
        renewed=at_request(s["service"],"POST","com.atproto.server.refreshSession",token=s["refresh_jwt"])
        c.execute("UPDATE sessions SET access_jwt=?,refresh_jwt=? WHERE token=?",(renewed["accessJwt"],renewed.get("refreshJwt",s["refresh_jwt"]),s["token"]))
        s=dict(s); s["access_jwt"]=renewed["accessJwt"]; s["refresh_jwt"]=renewed.get("refreshJwt",s["refresh_jwt"])
        return at_request(s["service"],method,endpoint,params,body,s["access_jwt"])

def get_session(c,authorization):
    m=re.search(r'(?:^|,\s*)oauth_token="([^\"]+)"',authorization or "")
    token=m.group(1) if m else ((authorization.split(None,1)[1]) if (authorization or "").lower().startswith("bearer ") else None)
    if not token: raise BridgeError(401,"Sign in with a Bluesky handle and app password")
    s=c.execute("SELECT * FROM sessions WHERE token=?",(token,)).fetchone()
    if not s: raise BridgeError(401,"Invalid bridge session")
    return dict(s)

def legacy_id(uri): return int.from_bytes(hashlib.sha256(uri.encode()).digest()[:7],"big")

def twitter_date(value):
    # The legacy client parses every created_at unconditionally.  Some AT
    # records (notably profiles) have no timestamp, so always return a valid
    # Twitter-format date instead of an empty string.
    try:
        if not value: raise ValueError("missing date")
        dt=datetime.fromisoformat(value.replace("Z","+00:00")).astimezone(timezone.utc)
        return dt.strftime("%a %b %d %H:%M:%S +0000 %Y")
    except Exception: return "Thu Jan 01 00:00:00 +0000 1970"

def map_profile(p):
    profile_id=legacy_id(p.get("did",p.get("handle","")))
    return {"id":profile_id,"id_str":str(profile_id),"_at_did":p.get("did",""),"name":p.get("displayName") or p.get("handle",""),
      "screen_name":p.get("handle",""),"description":p.get("description","") or "","followers_count":p.get("followersCount",0),
      "friends_count":p.get("followsCount",0),"statuses_count":p.get("postsCount",0),"created_at":twitter_date(p.get("createdAt","")),
      "profile_image_url_https":p.get("avatar",""),"protected":False,"verified":False}

def map_post(item):
    post=item.get("post",item); record=post.get("record",{}); author=post.get("author",{})
    uri=post.get("uri",""); text=record.get("text",post.get("text",""))
    post_id=legacy_id(uri or text)
    return {"id":post_id,"id_str":str(post_id),"text":text,"full_text":text,"created_at":twitter_date(record.get("createdAt",post.get("indexedAt",""))),
      "user":map_profile(author),"favorited":False,"retweeted":False,"favorite_count":post.get("likeCount",0),"retweet_count":post.get("repostCount",0),
      "entities":{"hashtags":[],"user_mentions":[],"urls":[]},"_at_uri":uri,"_at_cid":post.get("cid","")}

def mapped_posts(feed): return [map_post(v) for v in feed.get("feed",[])]

class Handler(BaseHTTPRequestHandler):
    server_version="TailstterBridge/1.0"
    # Gingerbread's Apache client is happier with an explicit HTTP/1.1 status
    # line.  Close each small legacy API response cleanly instead of relying
    # on its HTTP/1.0 default-close behavior.
    protocol_version="HTTP/1.1"
    def send_payload(self,status,payload,content_type="application/json; charset=utf-8"):
        data=payload if isinstance(payload,bytes) else json.dumps(payload,separators=(",",":"),ensure_ascii=False).encode()
        self.send_response(status); self.send_header("Content-Type",content_type); self.send_header("Content-Length",str(len(data))); self.send_header("Cache-Control","no-store"); self.send_header("Connection","close"); self.end_headers(); self.wfile.write(data); self.close_connection=True
    def body(self):
        size=int(self.headers.get("Content-Length","0"))
        if size>2_000_000: raise BridgeError(413,"Request body too large")
        raw=self.rfile.read(size)
        if self.headers.get("Content-Type","").startswith("application/x-www-form-urlencoded"): return parse_qs(raw.decode("utf-8"))
        try: return json.loads(raw or b"{}")
        except ValueError: raise BridgeError(400,"Invalid request body")
    def dispatch(self):
        try:
            u=urlparse(self.path); q=parse_qs(u.query); c=connect()
            try:
                code,payload,ctype=self.route(c,u.path,q)
                c.commit()
            finally: c.close()
            self.send_payload(code,payload,ctype)
        except BridgeError as e:
            payload={"errors":[{"message":e.message,"code":e.status}]} if urlparse(self.path).path=="/oauth/access_token" else {"error":e.message}
            self.send_payload(e.status,payload)
        except Exception: self.send_payload(500,{"error":"Bridge internal error"})
    def do_GET(self): self.dispatch()
    def do_POST(self): self.dispatch()
    def do_DELETE(self): self.dispatch()
    def route(self,c,path,q):
        if path=="/health" and self.command=="GET": return 200,{"service":"Tailstter Bluesky bridge","status":"ok","upstream":BSKY_SERVICE},"application/json"
        if path=="/oauth/access_token" and self.command=="POST":
            p=self.body(); one=lambda k:(p.get(k) or q.get(k) or [""])[0]
            if one("x_auth_mode")!="client_auth": raise BridgeError(400,"Unsupported legacy login flow")
            identifier,password=one("x_auth_username").strip().lstrip("@"),one("x_auth_password")
            if not identifier or not password: raise BridgeError(400,"Enter a Bluesky handle and app password")
            session=at_request(BSKY_SERVICE,"POST","com.atproto.server.createSession",body={"identifier":identifier,"password":password})
            token=secrets.token_urlsafe(32); secret=secrets.token_urlsafe(32)
            c.execute("INSERT INTO sessions(token,service,did,handle,access_jwt,refresh_jwt,created_at) VALUES(?,?,?,?,?,?,?)",
              (token,BSKY_SERVICE,session["did"],session["handle"],session["accessJwt"],session["refreshJwt"],int(time.time())))
            response=urlencode({"oauth_token":token,"oauth_token_secret":secret,"user_id":legacy_id(session["did"]),"screen_name":session["handle"]}).encode()
            # The legacy Android HTTP reader rejects form-urlencoded response
            # entities before handing the body to its query-string parser.
            return 200,response,"text/plain; charset=utf-8"
        if path=="/oauth/logout" and self.command=="POST":
            s=get_session(c,self.headers.get("Authorization"))
            # deleteSession is a session-management operation authorized by
            # the refresh JWT, not the access JWT used for ordinary XRPCs.
            at_request(s["service"],"POST","com.atproto.server.deleteSession",token=s["refresh_jwt"])
            c.execute("DELETE FROM sessions WHERE token=?",(s["token"],))
            return 200,{"ok":True},"application/json"
        s=get_session(c,self.headers.get("Authorization"))
        if path=="/1/account/verify_credentials.json":
            p=public("app.bsky.actor.getProfile",{"actor":s["did"]}); return 200,map_profile(p),"application/json"
        if path=="/1/statuses/update.json" and self.command=="POST":
            p=self.body(); text=p.get("status") if isinstance(p,dict) else None
            if isinstance(text,list): text=text[0] if text else ""
            if not text: text=(q.get("status") or [""])[0]
            if not isinstance(text,str) or not text.strip() or len(text)>300: raise BridgeError(400,"Post text must contain 1-300 characters")
            record={"$type":"app.bsky.feed.post","text":text,"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}
            created=session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.feed.post","record":record})
            item={"uri":created["uri"],"cid":created.get("cid",""),"author":{"did":s["did"],"handle":s["handle"]},"record":record}
            return 200,map_post(item),"application/json"
        if path.startswith("/1/statuses/destroy") and self.command in ("POST","DELETE"):
            match=re.search(r"/destroy/(\d+)(?:\.json)?$",path)
            target=int(match.group(1)) if match else int((q.get("status_id") or q.get("id") or ["0"])[0])
            if target<=0: raise BridgeError(400,"status_id is required")
            cursor=None; found=None; pages=0
            while pages<100:
                args={"repo":s["did"],"collection":"app.bsky.feed.post","limit":100}
                if cursor: args["cursor"]=cursor
                records=session_request(c,s,"GET","com.atproto.repo.listRecords",args)
                found=next((v for v in records.get("records",[]) if legacy_id(v.get("uri",""))==target),None)
                if found or not records.get("cursor"): break
                cursor=records["cursor"]; pages+=1
            if not found: raise BridgeError(404,"Post not found or not owned by this account")
            rkey=found["uri"].rsplit("/",1)[-1]
            session_request(c,s,"POST","com.atproto.repo.deleteRecord",body={"repo":s["did"],"collection":"app.bsky.feed.post","rkey":rkey})
            return 200,{"id":target,"id_str":str(target),"deleted":True},"application/json"
        if path=="/1/statuses/home_timeline.json":
            feed=session_request(c,s,"GET","app.bsky.feed.getTimeline",{"limit":min(int((q.get("count") or [50])[0]),100)})
            return 200,mapped_posts(feed),"application/json"
        if path=="/1/statuses/user_timeline.json":
            actor=(q.get("screen_name") or [s["handle"]])[0]
            feed=public("app.bsky.feed.getAuthorFeed",{"actor":actor,"limit":min(int((q.get("count") or [50])[0]),100)})
            return 200,mapped_posts(feed),"application/json"
        if path=="/1/search/tweets.json":
            term=(q.get("q") or [""])[0]
            if not term: raise BridgeError(400,"Search query is required")
            result=public("app.bsky.feed.searchPosts",{"q":term,"limit":min(int((q.get("count") or q.get("rpp") or [25])[0]),100)})
            posts=[map_post({"post":p}) for p in result.get("posts",[])]
            return 200,{"statuses":posts,"results":posts,"search_metadata":{"query":term,"count":len(posts)},"results_per_page":len(posts)},"application/json"
        if path=="/1/users/show.json":
            actor=(q.get("screen_name") or [""])[0]
            if not actor: raise BridgeError(400,"screen_name is required")
            return 200,map_profile(public("app.bsky.actor.getProfile",{"actor":actor})),"application/json"
        if path in ("/1/friendships/create.json","/1/friendships/destroy.json") and self.command in ("POST","DELETE"):
            handle=(q.get("screen_name") or [""])[0]
            if not handle: raise BridgeError(400,"screen_name is required")
            profile=public("app.bsky.actor.getProfile",{"actor":handle}); subject=profile["did"]
            cursor=None; existing=None; pages=0
            while pages<20:
                args={"repo":s["did"],"collection":"app.bsky.graph.follow","limit":100}
                if cursor: args["cursor"]=cursor
                records=session_request(c,s,"GET","com.atproto.repo.listRecords",args)
                existing=next((v for v in records.get("records",[]) if v.get("value",{}).get("subject")==subject),None)
                if existing or not records.get("cursor"): break
                cursor=records["cursor"]; pages+=1
            if path.endswith("create.json"):
                if not existing:
                    created=session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.graph.follow","record":{"$type":"app.bsky.graph.follow","subject":subject,"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}})
                return 200,{"following":True,"screen_name":handle},"application/json"
            if existing:
                rkey=existing["uri"].rsplit("/",1)[-1]
                session_request(c,s,"POST","com.atproto.repo.deleteRecord",body={"repo":s["did"],"collection":"app.bsky.graph.follow","rkey":rkey})
            return 200,{"following":False,"screen_name":handle},"application/json"
        raise BridgeError(404,"Unknown legacy API route")
    def log_message(self,fmt,*args):
        if urlparse(self.path).path=="/oauth/access_token":
            # Keep the password-bearing query string out of logs, but retain
            # the HTTP result so failed legacy-client exchanges are diagnosable.
            status=args[1] if len(args)>1 else "unknown"
            print("%s - legacy XAuth login (request path redacted) %s"%(self.address_string(),status))
        else:
            super().log_message(fmt,*args)


if __name__=="__main__":
    host=os.environ.get("TAILSTTER_HOST","0.0.0.0"); port=int(os.environ.get("TAILSTTER_PORT","6483")); connect().close()
    server=ThreadingHTTPServer((host,port),Handler)
    cert,key=os.environ.get("TAILSTTER_TLS_CERT"),os.environ.get("TAILSTTER_TLS_KEY")
    if cert and key:
        import ssl
        context=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER); context.load_cert_chain(cert,key); server.socket=context.wrap_socket(server.socket,server_side=True)
    elif cert or key:
        server.server_close()
        raise SystemExit("Set both TAILSTTER_TLS_CERT and TAILSTTER_TLS_KEY, or omit both to use plain HTTP.")
    print("Tailstter AT bridge listening on %s:%d"%(host,port)); server.serve_forever()
