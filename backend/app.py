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
    c.execute("CREATE TABLE IF NOT EXISTS legacy_posts(id INTEGER PRIMARY KEY,uri TEXT NOT NULL,cid TEXT NOT NULL,author_did TEXT NOT NULL)")
    c.execute("CREATE TABLE IF NOT EXISTS saved_searches(id INTEGER PRIMARY KEY AUTOINCREMENT,session_token TEXT NOT NULL,query TEXT NOT NULL)")
    c.execute("CREATE TABLE IF NOT EXISTS legacy_lists(id INTEGER PRIMARY KEY AUTOINCREMENT,session_token TEXT NOT NULL,name TEXT NOT NULL,mode TEXT NOT NULL DEFAULT 'private',description TEXT NOT NULL DEFAULT '')")
    c.execute("CREATE TABLE IF NOT EXISTS legacy_list_members(list_id INTEGER NOT NULL,did TEXT NOT NULL,handle TEXT NOT NULL,PRIMARY KEY(list_id,did))")
    return c

def at_request(service,method,endpoint,params=None,body=None,token=None,extra_headers=None):
    url=service.rstrip("/")+"/xrpc/"+endpoint
    if params: url+="?"+urlencode(params,doseq=True)
    payload=None if body is None else json.dumps(body,separators=(",",":")).encode()
    headers={"Accept":"application/json"}
    if payload is not None: headers["Content-Type"]="application/json"
    if token: headers["Authorization"]="Bearer "+token
    if extra_headers: headers.update(extra_headers)
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

def session_request(c,s,method,endpoint,params=None,body=None,extra_headers=None):
    def call(token):
        if extra_headers: return at_request(s["service"],method,endpoint,params,body,token,extra_headers)
        return at_request(s["service"],method,endpoint,params,body,token)
    try: return call(s["access_jwt"])
    except BridgeError as e:
        if e.status!=401: raise
        renewed=at_request(s["service"],"POST","com.atproto.server.refreshSession",token=s["refresh_jwt"])
        c.execute("UPDATE sessions SET access_jwt=?,refresh_jwt=? WHERE token=?",(renewed["accessJwt"],renewed.get("refreshJwt",s["refresh_jwt"]),s["token"]))
        s=dict(s); s["access_jwt"]=renewed["accessJwt"]; s["refresh_jwt"]=renewed.get("refreshJwt",s["refresh_jwt"])
        return call(s["access_jwt"])

CHAT_HEADERS={"atproto-proxy":"did:web:api.bsky.chat#bsky_chat"}

def chat_request(c,s,method,endpoint,params=None,body=None):
    return session_request(c,s,method,endpoint,params,body,CHAT_HEADERS)

def get_session(c,authorization):
    m=re.search(r'(?:^|,\s*)oauth_token="([^\"]+)"',authorization or "")
    token=m.group(1) if m else ((authorization.split(None,1)[1]) if (authorization or "").lower().startswith("bearer ") else None)
    if not token: raise BridgeError(401,"Sign in with a Bluesky handle and app password")
    s=c.execute("SELECT * FROM sessions WHERE token=?",(token,)).fetchone()
    if not s: raise BridgeError(401,"Invalid bridge session")
    return dict(s)

def legacy_id(uri): return int.from_bytes(hashlib.sha256(uri.encode()).digest()[:7],"big")

def first_value(body,query,key,default=""):
    value=(body or {}).get(key)
    if value in (None,""): value=(query or {}).get(key)
    if isinstance(value,(list,tuple)): return value[0] if value else default
    return value if value is not None else default

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

def remember_posts(c,posts):
    for p in posts:
        uri=p.get("_at_uri")
        if uri: c.execute("INSERT OR REPLACE INTO legacy_posts(id,uri,cid,author_did) VALUES(?,?,?,?)",(p["id"],uri,p.get("_at_cid",""),p.get("user",{}).get("_at_did","")))
    return posts

def resolve_post(c,target):
    try: n=int(target)
    except (ValueError,TypeError): n=legacy_id(str(target))
    return c.execute("SELECT * FROM legacy_posts WHERE id=?",(n,)).fetchone()

def at_records(c,s,collection):
    cursor=None; out=[]
    for _ in range(20):
        args={"repo":s["did"],"collection":collection,"limit":100}
        if cursor: args["cursor"]=cursor
        page=session_request(c,s,"GET","com.atproto.repo.listRecords",args)
        out.extend(page.get("records",[])); cursor=page.get("cursor")
        if not cursor: break
    return out

def legacy_list_object(row,c,s):
    count=c.execute("SELECT count(*) FROM legacy_list_members WHERE list_id=?",(row["id"],)).fetchone()[0]
    return {"id":row["id"],"id_str":str(row["id"]),"name":row["name"],"mode":row["mode"],"description":row["description"],"member_count":count,"subscriber_count":0,"user":map_profile({"did":s["did"],"handle":s["handle"]})}

def map_dm_message(message,session,convo_id=""):
    sender=message.get("sender",{})
    sender_did=sender.get("did","")
    members=message.get("members",[])
    recipient_did=next((m.get("did") for m in members if m.get("did")!=sender_did),session["did"] if sender_did!=session["did"] else "")
    recipient=next((m for m in members if m.get("did")==recipient_did),{})
    sender_handle=sender.get("handle") or next((m.get("handle") for m in members if m.get("did")==sender_did),session["handle"] if sender_did==session["did"] else "")
    return {"id":legacy_id(message.get("id",convo_id)),"id_str":str(legacy_id(message.get("id",convo_id))),
      "text":message.get("text", ""),"created_at":twitter_date(message.get("sentAt")),
      "sender_id":legacy_id(sender_did),"sender_screen_name":sender_handle,
      "recipient_id":legacy_id(recipient_did),"recipient_screen_name":recipient.get("handle",""),"_convo_id":convo_id,"_message_id":message.get("id","")}

def list_dm_messages(c,s):
    data=chat_request(c,s,"GET","chat.bsky.convo.listConvos",{"limit":100})
    output=[]
    for convo in data.get("convos",[]):
        messages=chat_request(c,s,"GET","chat.bsky.convo.getMessages",{"convoId":convo["id"],"limit":100}).get("messages",[])
        for msg in messages:
            msg["members"]=convo.get("members",[])
            if msg.get("text"): output.append(map_dm_message(msg,s,convo.get("id","")))
    output.sort(key=lambda m:m["created_at"],reverse=True)
    return output

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
        if path=="/decider/android.json" and self.command=="GET": return 200,{"decider":{}},"application/json"
        if path=="/oauth/access_token" and self.command=="POST":
            p=self.body(); one=lambda k:first_value(p,q,k)
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
        if path in ("/1/statuses/home_timeline.json","/1/statuses/friends.json"):
            feed=session_request(c,s,"GET","app.bsky.feed.getTimeline",{"limit":min(int((q.get("count") or [50])[0]),100)})
            return 200,remember_posts(c,mapped_posts(feed)),"application/json"
        if path=="/1/statuses/mentions.json":
            result=public("app.bsky.feed.searchPosts",{"q":"@"+s["handle"],"limit":min(int((q.get("count") or [50])[0]),100)})
            mentions=[map_post({"post":p}) for p in result.get("posts",[]) if s["handle"].lower() in p.get("record",{}).get("text","").lower()]
            return 200,mentions,"application/json"
        if path in ("/1/statuses/retweeted_by_me.json","/1/statuses/retweeted_to_me.json"):
            feed=public("app.bsky.feed.getAuthorFeed",{"actor":s["did"],"limit":100})
            reposts=[v for v in feed.get("feed",[]) if (v.get("reason") or {}).get("$type","").endswith("#reasonRepost")]
            return 200,remember_posts(c,mapped_posts({"feed":reposts})),"application/json"
        if path.startswith("/1/trends/") and self.command=="GET": return 200,[],"application/json"
        if path=="/1/saved_searches.json" and self.command=="GET":
            rows=c.execute("SELECT id,query FROM saved_searches WHERE session_token=? ORDER BY id DESC",(s["token"],)).fetchall()
            return 200,[{"id":r[0],"id_str":str(r[0]),"name":r[1],"query":r[1]} for r in rows],"application/json"
        if path=="/1/saved_searches/create.json" and self.command=="POST":
            p=self.body(); query=first_value(p,q,"query")
            if not query: raise BridgeError(400,"query is required")
            cur=c.execute("INSERT INTO saved_searches(session_token,query) VALUES(?,?)",(s["token"],query))
            return 200,{"id":cur.lastrowid,"id_str":str(cur.lastrowid),"name":query,"query":query},"application/json"
        if path.startswith("/1/saved_searches/destroy/") and self.command in ("POST","DELETE"):
            target=path.rsplit("/",1)[-1]; target=target[:-5] if target.endswith(".json") else target
            c.execute("DELETE FROM saved_searches WHERE id=? AND session_token=?",(int(target),s["token"]))
            return 200,{"id":int(target),"destroyed":True},"application/json"
        if path=="/1/urls/shorten.json" and self.command=="GET":
            url=(q.get("url") or [""])[0]
            return 200,{"url":url,"short_url":url,"short_url_https":url},"application/json"
        if path=="/1/promoted_content/log.json" and self.command=="POST": return 200,{},"application/json"
        if path.startswith("/1/geo/") and self.command=="GET": return 200,{"result":{"places":[]}},"application/json"
        if path in ("/1/report_spam.json","/1/users/report_spam.json") and self.command=="POST": return 200,{"reported":True},"application/json"
        if path in ("/1/direct_messages.json","/1/direct_messages/sent.json") and self.command=="GET":
            messages=list_dm_messages(c,s)
            if path.endswith("sent.json"): messages=[m for m in messages if m["sender_id"]==legacy_id(s["did"])]
            return 200,messages,"application/json"
        if path=="/1/direct_messages/new.json" and self.command=="POST":
            p=self.body(); one=lambda k:first_value(p,q,k)
            handle=one("screen_name"); text=one("text")
            if not handle or not text: raise BridgeError(400,"screen_name and text are required")
            recipient=public("app.bsky.actor.getProfile",{"actor":handle})
            convo=chat_request(c,s,"POST","chat.bsky.convo.getConvoForMembers",body={"members":[recipient["did"]]})
            sent=chat_request(c,s,"POST","chat.bsky.convo.sendMessage",body={"convoId":convo["convo"]["id"],"message":{"text":text}})
            message=sent.get("message",sent); message["members"]=convo["convo"].get("members",[{"did":s["did"],"handle":s["handle"]},{"did":recipient["did"],"handle":recipient.get("handle",handle)}])
            mapped=map_dm_message(message,s,convo["convo"]["id"])
            return 200,mapped,"application/json"
        if path.startswith("/1/direct_messages/destroy/") and self.command in ("POST","DELETE"):
            target=path.rsplit("/",1)[-1]
            if target.endswith(".json"): target=target[:-5]
            for convo in chat_request(c,s,"GET","chat.bsky.convo.listConvos",{"limit":100}).get("convos",[]):
                msgs=chat_request(c,s,"GET","chat.bsky.convo.getMessages",{"convoId":convo["id"],"limit":100}).get("messages",[])
                match=next((m for m in msgs if str(legacy_id(m.get("id","")))==target),None)
                if match:
                    chat_request(c,s,"POST","chat.bsky.convo.deleteMessageForSelf",body={"convoId":convo["id"],"messageId":match["id"]})
                    return 200,map_dm_message(match,s,convo["id"]),"application/json"
            raise BridgeError(404,"Message not found")
        if path=="/1/favorites.json" and self.command=="GET":
            actor=(q.get("screen_name") or [s["handle"]])[0]
            feed=public("app.bsky.feed.getActorLikes",{"actor":actor,"limit":min(int((q.get("count") or [50])[0]),100)})
            return 200,remember_posts(c,mapped_posts(feed)),"application/json"
        if (path=="/1/statuses/retweets_of_me.json" or re.match(r"^/1/\d+/lists(?:/subscriptions)?\.json$",path)) and self.command=="GET":
            return 200,[],"application/json"
        if (path=="/1/statuses/show.json" or re.match(r"^/1/statuses/show/\d+\.json$",path)) and self.command=="GET":
            target=path.rsplit("/",1)[-1][:-5] if path.endswith(".json") and path!="/1/statuses/show.json" else (q.get("id") or [""])[0]
            row=resolve_post(c,target)
            if not row: raise BridgeError(404,"Post not found")
            thread=public("app.bsky.feed.getPostThread",{"uri":row["uri"]}).get("thread",{}).get("post")
            if not thread: raise BridgeError(404,"Post not found")
            return 200,remember_posts(c,[map_post({"post":thread})])[0],"application/json"
        if path.startswith("/1/statuses/retweet/") and self.command=="POST":
            target=path.rsplit("/",1)[-1]; target=target[:-5] if target.endswith(".json") else target; row=resolve_post(c,target)
            if not row: raise BridgeError(404,"Post not found; load the timeline first")
            record={"$type":"app.bsky.feed.repost","subject":{"uri":row["uri"],"cid":row["cid"]},"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}
            session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.feed.repost","record":record})
            thread=public("app.bsky.feed.getPostThread",{"uri":row["uri"]}).get("thread",{}).get("post",{})
            return 200,map_post({"post":thread}),"application/json"
        if path in ("/1/favorites/create.json","/1/favorites/destroy.json") and self.command in ("POST","DELETE"):
            p=self.body(); target=(p.get("id") or p.get("status_id") or q.get("id") or q.get("status_id") or [""])[0]
            row=resolve_post(c,target)
            if not row: raise BridgeError(404,"Post not found; load the timeline first")
            existing=next((r for r in at_records(c,s,"app.bsky.feed.like") if r.get("value",{}).get("subject",{}).get("uri")==row["uri"]),None)
            if path.endswith("create.json") and not existing:
                record={"$type":"app.bsky.feed.like","subject":{"uri":row["uri"],"cid":row["cid"]},"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}
                session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.feed.like","record":record})
            elif path.endswith("destroy.json") and existing:
                session_request(c,s,"POST","com.atproto.repo.deleteRecord",body={"repo":s["did"],"collection":"app.bsky.feed.like","rkey":existing["uri"].rsplit("/",1)[-1]})
            return 200,{"id":int(target),"id_str":str(target),"favorited":path.endswith("create.json")},"application/json"
        if path=="/1/account/rate_limit_status.json":
            return 200,{"resources":{},"remaining_hits":1000,"hourly_limit":1000},"application/json"
        if path=="/1/account/update_profile.json" and self.command=="POST":
            p=self.body(); old=session_request(c,s,"GET","com.atproto.repo.getRecord",{"repo":s["did"],"collection":"app.bsky.actor.profile","rkey":"self"})
            record=old.get("value",{"$type":"app.bsky.actor.profile"})
            display=first_value(p,q,"name"); bio=first_value(p,q,"description")
            if display: record["displayName"]=display
            if bio: record["description"]=bio
            session_request(c,s,"POST","com.atproto.repo.putRecord",body={"repo":s["did"],"collection":"app.bsky.actor.profile","rkey":"self","record":record})
            return 200,map_profile(public("app.bsky.actor.getProfile",{"actor":s["did"]})),"application/json"
        if path in ("/1/account/settings.json","/1/client_applications/configuration.json"):
            return 200,{"protected":False,"screen_name":s["handle"],"language":"en","time_zone":"UTC","geo_enabled":False},"application/json"
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
        if path=="/1/users/lookup.json":
            actors=(q.get("screen_name") or q.get("user_id") or [""])[0].split(",")
            profiles=[]
            for actor in actors[:25]:
                if actor.strip():
                    try: profiles.append(map_profile(public("app.bsky.actor.getProfile",{"actor":actor.strip()})))
                    except BridgeError as e:
                        if e.status not in (400,404): raise
            return 200,profiles,"application/json"
        if path=="/1/users/search.json":
            term=(q.get("q") or [""])[0]
            result=public("app.bsky.actor.searchActors",{"q":term,"limit":min(int((q.get("count") or [20])[0]),100)}) if term else {"actors":[]}
            return 200,[map_profile(p) for p in result.get("actors",[])],"application/json"
        if path=="/1/users/suggestions.json":
            sug=session_request(c,s,"GET","app.bsky.actor.getSuggestions",{"limit":20})
            return 200,[map_profile(p) for p in sug.get("actors",[])],"application/json"
        if path=="/1/statuses/followers.json":
            actor=(q.get("screen_name") or [s["did"]])[0]
            result=public("app.bsky.graph.getFollowers",{"actor":actor,"limit":min(int((q.get("count") or [50])[0]),100)})
            return 200,[map_profile(p) for p in result.get("followers",[])],"application/json"
        if path=="/1/friendships/show.json":
            other=(q.get("target_screen_name") or q.get("screen_name") or [""])[0]
            if not other: raise BridgeError(400,"screen_name is required")
            did=public("app.bsky.actor.getProfile",{"actor":other})["did"]
            rel=public("app.bsky.graph.getRelationships",{"actor":s["did"],"others":[did]}).get("relationships",[{}])[0]
            return 200,{"relationship":{"source":{"following":bool(rel.get("following")),"followed_by":bool(rel.get("followedBy"))},"target":{"id_str":str(legacy_id(did)),"screen_name":other}}},"application/json"
        if path=="/1/friendships/create_all.json" and self.command=="POST":
            p=self.body(); handles=(first_value(p,q,"screen_name") or first_value(p,q,"user_id")).split(",")
            result=[]
            for handle in handles[:20]:
                if not handle.strip(): continue
                actor=public("app.bsky.actor.getProfile",{"actor":handle.strip()})
                existing=next((r for r in at_records(c,s,"app.bsky.graph.follow") if r.get("value",{}).get("subject")==actor["did"]),None)
                if not existing:
                    record={"$type":"app.bsky.graph.follow","subject":actor["did"],"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}
                    session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.graph.follow","record":record})
                result.append(map_profile(actor))
            return 200,result,"application/json"
        list_match=re.match(r"^/1/lists/(\d+)(?:/(members|subscribers|statuses))?\.json$",path)
        if path in ("/1/lists.json","/1/lists/list.json","/1/lists/memberships.json","/1/lists/subscriptions.json") and self.command=="GET":
            rows=c.execute("SELECT * FROM legacy_lists WHERE session_token=? ORDER BY id DESC",(s["token"],)).fetchall()
            return 200,[legacy_list_object(r,c,s) for r in rows],"application/json"
        if path=="/1/lists/create.json" and self.command=="POST":
            p=self.body(); name=first_value(p,q,"name")
            if not name: raise BridgeError(400,"name is required")
            mode=first_value(p,q,"mode","private"); mode="public" if mode=="public" else "private"
            cur=c.execute("INSERT INTO legacy_lists(session_token,name,mode,description) VALUES(?,?,?,?)",(s["token"],name,mode,first_value(p,q,"description")))
            return 200,legacy_list_object(c.execute("SELECT * FROM legacy_lists WHERE id=?",(cur.lastrowid,)).fetchone(),c,s),"application/json"
        if path=="/1/lists/update.json" and self.command in ("POST","PUT"):
            p=self.body(); ident=first_value(p,q,"list_id") or first_value(p,q,"id"); row=c.execute("SELECT * FROM legacy_lists WHERE id=? AND session_token=?",(ident,s["token"])).fetchone()
            if not row: raise BridgeError(404,"List not found")
            c.execute("UPDATE legacy_lists SET name=?,mode=?,description=? WHERE id=?",(first_value(p,q,"name",row["name"]),first_value(p,q,"mode",row["mode"]),first_value(p,q,"description",row["description"]),ident))
            return 200,legacy_list_object(c.execute("SELECT * FROM legacy_lists WHERE id=?",(ident,)).fetchone(),c,s),"application/json"
        if path=="/1/lists/destroy.json" and self.command in ("POST","DELETE"):
            p=self.body(); ident=first_value(p,q,"list_id") or first_value(p,q,"id")
            c.execute("DELETE FROM legacy_list_members WHERE list_id IN (SELECT id FROM legacy_lists WHERE id=? AND session_token=?)",(ident,s["token"]))
            c.execute("DELETE FROM legacy_lists WHERE id=? AND session_token=?",(ident,s["token"]))
            return 200,{"destroyed":True},"application/json"
        if path=="/1/lists/statuses.json" and self.command=="GET":
            ident=(q.get("list_id") or [""])[0]
            row=c.execute("SELECT * FROM legacy_lists WHERE id=? AND session_token=?",(ident,s["token"])).fetchone()
            if not row: raise BridgeError(404,"List not found")
            posts=[]
            for m in c.execute("SELECT handle FROM legacy_list_members WHERE list_id=?",(ident,)):
                posts.extend(mapped_posts(public("app.bsky.feed.getAuthorFeed",{"actor":m[0],"limit":20})))
            posts.sort(key=lambda x:x.get("created_at",""),reverse=True)
            return 200,remember_posts(c,posts[:100]),"application/json"
        if list_match and self.command in ("GET","POST","DELETE"):
            ident,sub=list_match.groups(); row=c.execute("SELECT * FROM legacy_lists WHERE id=? AND session_token=?",(ident,s["token"])).fetchone()
            if not row: raise BridgeError(404,"List not found")
            if sub=="members" and self.command in ("POST","DELETE"):
                p=self.body(); handle=first_value(p,q,"screen_name")
                if not handle: raise BridgeError(400,"screen_name is required")
                actor=public("app.bsky.actor.getProfile",{"actor":handle})
                if self.command=="POST": c.execute("INSERT OR REPLACE INTO legacy_list_members(list_id,did,handle) VALUES(?,?,?)",(ident,actor["did"],actor["handle"]))
                else: c.execute("DELETE FROM legacy_list_members WHERE list_id=? AND did=?",(ident,actor["did"]))
                return 200,{"list":legacy_list_object(row,c,s),"user":map_profile(actor)},"application/json"
            if sub=="members":
                return 200,[map_profile({"did":m[0],"handle":m[1]}) for m in c.execute("SELECT did,handle FROM legacy_list_members WHERE list_id=?",(ident,))],"application/json"
            if sub=="statuses":
                posts=[]
                for m in c.execute("SELECT handle FROM legacy_list_members WHERE list_id=?",(ident,)):
                    feed=public("app.bsky.feed.getAuthorFeed",{"actor":m[0],"limit":20})
                    posts.extend(mapped_posts(feed).copy())
                posts.sort(key=lambda x:x.get("created_at",""),reverse=True)
                return 200,remember_posts(c,posts[:100]),"application/json"
            if sub=="subscribers": return 200,[],"application/json"
            return 200,legacy_list_object(row,c,s),"application/json"
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
        if path=="/1/blocks/blocking.json" and self.command=="GET":
            profiles=[]
            for r in at_records(c,s,"app.bsky.graph.block"):
                did=r.get("value",{}).get("subject")
                if did:
                    try: profiles.append(map_profile(public("app.bsky.actor.getProfile",{"actor":did})))
                    except BridgeError: pass
            return 200,profiles,"application/json"
        if path in ("/1/blocks/create.json","/1/blocks/destroy.json") and self.command in ("POST","DELETE"):
            p=self.body(); handle=first_value(p,q,"screen_name")
            if not handle: raise BridgeError(400,"screen_name is required")
            did=public("app.bsky.actor.getProfile",{"actor":handle})["did"]
            existing=next((r for r in at_records(c,s,"app.bsky.graph.block") if r.get("value",{}).get("subject")==did),None)
            if path.endswith("create.json") and not existing:
                record={"$type":"app.bsky.graph.block","subject":did,"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}
                session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.graph.block","record":record})
            elif existing:
                session_request(c,s,"POST","com.atproto.repo.deleteRecord",body={"repo":s["did"],"collection":"app.bsky.graph.block","rkey":existing["uri"].rsplit("/",1)[-1]})
            return 200,map_profile(public("app.bsky.actor.getProfile",{"actor":did})),"application/json"
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
