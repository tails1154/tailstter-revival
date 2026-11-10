"""HTTP bridge from the 2011 Twitter API client to Bluesky's AT Protocol."""
import hashlib, json, os, re, secrets, sqlite3, sys, time
import xml.etree.ElementTree as ET
from datetime import datetime, timezone
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import parse_qs, urlencode, urlparse
from urllib.request import Request, urlopen

DB_PATH=Path(os.environ.get("TAILSTTER_DB","tailstter.sqlite3"))
BSKY_SERVICE=os.environ.get("TAILSTTER_BSKY_SERVICE","https://bsky.social").rstrip("/")
BSKY_PUBLIC=os.environ.get("TAILSTTER_BSKY_PUBLIC","https://public.api.bsky.app").rstrip("/")
BSKY_CHAT=os.environ.get("TAILSTTER_BSKY_CHAT","https://api.bsky.chat").rstrip("/")
AVATAR_PROXY=os.environ.get("TAILSTTER_AVATAR_PROXY","http://tails1154.com:6483/1/media/avatar")

def connect():
    DB_PATH.parent.mkdir(parents=True,exist_ok=True)
    c=sqlite3.connect(str(DB_PATH),timeout=15); c.row_factory=sqlite3.Row
    c.execute("CREATE TABLE IF NOT EXISTS sessions(token TEXT PRIMARY KEY,service TEXT NOT NULL,did TEXT NOT NULL,handle TEXT NOT NULL,access_jwt TEXT NOT NULL,refresh_jwt TEXT NOT NULL,created_at INTEGER NOT NULL)")
    c.execute("CREATE TABLE IF NOT EXISTS legacy_posts(id INTEGER PRIMARY KEY,uri TEXT NOT NULL,cid TEXT NOT NULL,author_did TEXT NOT NULL,post_json TEXT NOT NULL DEFAULT '{}')")
    columns={r[1] for r in c.execute("PRAGMA table_info(legacy_posts)")}
    if "post_json" not in columns: c.execute("ALTER TABLE legacy_posts ADD COLUMN post_json TEXT NOT NULL DEFAULT '{}'")
    c.execute("CREATE TABLE IF NOT EXISTS legacy_profiles(id INTEGER PRIMARY KEY,did TEXT NOT NULL,handle TEXT NOT NULL,profile_json TEXT NOT NULL)")
    c.execute("CREATE TABLE IF NOT EXISTS saved_searches(id INTEGER PRIMARY KEY AUTOINCREMENT,session_token TEXT NOT NULL,query TEXT NOT NULL,created_at TEXT NOT NULL DEFAULT 'Thu Jan 01 00:00:00 +0000 1970')")
    saved_columns={r[1] for r in c.execute("PRAGMA table_info(saved_searches)")}
    if "created_at" not in saved_columns: c.execute("ALTER TABLE saved_searches ADD COLUMN created_at TEXT NOT NULL DEFAULT 'Thu Jan 01 00:00:00 +0000 1970'")
    c.execute("CREATE TABLE IF NOT EXISTS legacy_lists(id INTEGER PRIMARY KEY AUTOINCREMENT,session_token TEXT NOT NULL,name TEXT NOT NULL,mode TEXT NOT NULL DEFAULT 'private',description TEXT NOT NULL DEFAULT '')")
    c.execute("CREATE TABLE IF NOT EXISTS legacy_list_members(list_id INTEGER NOT NULL,did TEXT NOT NULL,handle TEXT NOT NULL,PRIMARY KEY(list_id,did))")
    c.execute("CREATE TABLE IF NOT EXISTS legacy_list_subscribers(list_id INTEGER NOT NULL,did TEXT NOT NULL,handle TEXT NOT NULL,PRIMARY KEY(list_id,did))")
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
        raise BridgeError(e.code,detail.get("message") or detail.get("error") or "Bluesky request failed",detail.get("error"))
    except (URLError,TimeoutError) as e:
        raise BridgeError(502,"Could not reach Bluesky: "+str(e))

class BridgeError(Exception):
    def __init__(self,status,message,error=None): self.status,self.message,self.error=status,message,error

def public(endpoint,params=None): return at_request(BSKY_PUBLIC,"GET",endpoint,params=params)

def session_request(c,s,method,endpoint,params=None,body=None,extra_headers=None):
    def call(token):
        if extra_headers: return at_request(s["service"],method,endpoint,params,body,token,extra_headers)
        return at_request(s["service"],method,endpoint,params,body,token)
    try: return call(s["access_jwt"])
    except BridgeError as e:
        expired=(e.status==400 and (e.error=="ExpiredToken" or e.message.casefold()=="token has expired"))
        if e.status!=401 and not expired: raise
        renewed=at_request(s["service"],"POST","com.atproto.server.refreshSession",token=s["refresh_jwt"])
        c.execute("UPDATE sessions SET access_jwt=?,refresh_jwt=? WHERE token=?",(renewed["accessJwt"],renewed.get("refreshJwt",s["refresh_jwt"]),s["token"]))
        s["access_jwt"]=renewed["accessJwt"]; s["refresh_jwt"]=renewed.get("refreshJwt",s["refresh_jwt"])
        return call(s["access_jwt"])

CHAT_HEADERS={"atproto-proxy":"did:web:api.bsky.chat#bsky_chat"}

def chat_request(c,s,method,endpoint,params=None,body=None):
    # Chat XRPC is served by the dedicated Chat service. Bluesky's API
    # reference documents proxying through the PDS, but bsky.social returns
    # 501 for these methods on older sessions; the Chat host accepts the same
    # bearer session directly and avoids that failure mode.
    saved=s["service"]
    s["service"]=BSKY_CHAT
    try: return session_request(c,s,method,endpoint,params,body,CHAT_HEADERS)
    finally: s["service"]=saved

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
    viewer=p.get("viewer",{}) or {}
    avatar=p.get("avatar","") or ""
    profile_id=legacy_id(p.get("did",p.get("handle","")))
    return {"id":profile_id,"id_str":str(profile_id),"_at_did":p.get("did",""),"name":p.get("displayName") or p.get("handle",""),
      "screen_name":p.get("handle",""),"description":p.get("description","") or "","followers_count":p.get("followersCount",0),
      "friends_count":p.get("followsCount",0),"statuses_count":p.get("postsCount",0),"created_at":twitter_date(p.get("createdAt","")),
      "profile_image_url":(AVATAR_PROXY+"?url="+urlencode({"u":avatar})[2:] if avatar else ""),"profile_image_url_https":(AVATAR_PROXY+"?url="+urlencode({"u":avatar})[2:] if avatar else ""),"url":p.get("website","") or "","location":"",
      "favourites_count":0,"geo_enabled":False,"following":bool(viewer.get("following")),
      "followed_by":bool(viewer.get("followedBy")),"protected":False,"verified":False}

def map_post(item):
    post=item.get("post",item); record=post.get("record",{}); author=post.get("author",{})
    uri=post.get("uri",""); text=record.get("text",post.get("text",""))
    post_id=legacy_id(uri or text)
    return {"id":post_id,"id_str":str(post_id),"text":text,"full_text":text,"created_at":twitter_date(record.get("createdAt",post.get("indexedAt",""))),
      "user":map_profile(author),"source":"","source_url":"","favorited":False,"retweeted":False,"favorite_count":post.get("likeCount",0),"retweet_count":post.get("repostCount",0),
      "in_reply_to_status_id":None,"in_reply_to_user_id":None,"entities":{"hashtags":[],"user_mentions":[],"urls":[]},
      "_at_uri":uri,"_at_cid":post.get("cid","")}

def mapped_posts(feed): return [map_post(v) for v in feed.get("feed",[])]

def remember_profiles(c,profiles):
    for p in profiles:
        did=p.get("_at_did")
        if did and p.get("id"):
            c.execute("INSERT OR REPLACE INTO legacy_profiles(id,did,handle,profile_json) VALUES(?,?,?,?)",
              (p["id"],did,p.get("screen_name",""),json.dumps(p,separators=(",",":"))))
    return profiles

def profile_actor(c,s,handle=None,user_id=None):
    if handle:
        return handle.strip().lstrip("@")
    if user_id not in (None,""):
        try: ident=int(user_id)
        except (ValueError,TypeError): return None
        if ident==legacy_id(s["did"]): return s["did"]
        row=c.execute("SELECT did FROM legacy_profiles WHERE id=?",(ident,)).fetchone()
        if row: return row["did"]
        for row in c.execute("SELECT post_json FROM legacy_posts"):
            try: user=json.loads(row[0]).get("user",{})
            except (ValueError,TypeError): continue
            if user.get("id")==ident and user.get("_at_did"): return user["_at_did"]
        return None
    return s["did"]

def remember_posts(c,posts):
    for p in posts:
        uri=p.get("_at_uri")
        if uri: c.execute("INSERT OR REPLACE INTO legacy_posts(id,uri,cid,author_did,post_json) VALUES(?,?,?,?,?)",(p["id"],uri,p.get("_at_cid",""),p.get("user",{}).get("_at_did",""),json.dumps(p,separators=(",",":"))))
        remember_profiles(c,[p.get("user",{})])
    return posts

def legacy_post_object(row):
    try: post=json.loads(row["post_json"] or "{}")
    except (TypeError,ValueError): post={}
    if not post or not post.get("id"):
        post={"id":row["id"],"id_str":str(row["id"]),"text":"","full_text":"","created_at":"Thu Jan 01 00:00:00 +0000 1970",
          "user":map_profile({"did":row["author_did"],"handle":""}),"favorited":False,"retweeted":False,"favorite_count":0,"retweet_count":0,"entities":{"hashtags":[],"user_mentions":[],"urls":[]}}
    return post

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
    subscriber_count=c.execute("SELECT count(*) FROM legacy_list_subscribers WHERE list_id=?",(row["id"],)).fetchone()[0]
    return {"id":row["id"],"id_str":str(row["id"]),"name":row["name"],"full_name":"@"+s["handle"]+"/"+row["name"],
      "slug":row["name"],"mode":row["mode"],"public":row["mode"]=="public","description":row["description"],
      "member_count":count,"subscriber_count":subscriber_count,"user":map_profile({"did":s["did"],"handle":s["handle"]})}

def legacy_owner_is_session(owner,s):
    return owner.lstrip("@").lower() in (s["handle"].lower(),str(legacy_id(s["did"])),"me")

def map_dm_message(message,session,convo_id=""):
    sender=message.get("sender",{})
    sender_did=sender.get("did","")
    members=message.get("members",[])
    recipient_did=next((m.get("did") for m in members if m.get("did")!=sender_did),session["did"] if sender_did!=session["did"] else "")
    recipient=next((m for m in members if m.get("did")==recipient_did),{})
    sender_handle=sender.get("handle") or next((m.get("handle") for m in members if m.get("did")==sender_did),session["handle"] if sender_did==session["did"] else "")
    sender_obj=next((m for m in members if m.get("did")==sender_did),sender)
    recipient_obj=recipient or {"did":recipient_did,"handle":""}
    return {"id":legacy_id(message.get("id",convo_id)),"id_str":str(legacy_id(message.get("id",convo_id))),
      "text":message.get("text", ""),"created_at":twitter_date(message.get("sentAt")),
      "sender":map_profile(sender_obj) if sender_obj.get("did") else {},
      "recipient":map_profile(recipient_obj) if recipient_obj.get("did") else {},"entities":{"user_mentions":[]},
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
        if path=="/1/media/avatar" and self.command=="GET":
            target=(q.get("url") or [""])[0]
            if not target.startswith("https://"): raise BridgeError(400,"Invalid avatar URL")
            data=urlopen(target,timeout=10).read()
            return 200,data,"image/jpeg"
        if path=="/health" and self.command=="GET": return 200,{"service":"Tailstter Bluesky bridge","status":"ok","upstream":BSKY_SERVICE},"application/json"
        if path=="/decider/android.json" and self.command=="GET": return 200,{"decider":{}},"application/json"
        if path=="/scribe" and self.command=="POST":
            size=int(self.headers.get("Content-Length","0")); self.rfile.read(min(size,1024*1024))
            return 200,{},"application/json"
        if path=="/mobile_client_api/signup" and self.command=="POST":
            return 410,{"error":"Tailstter uses Bluesky accounts. Create an account with Bluesky, then sign in here with an app password."},"application/json"
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
        if path in ("/1/account/verify_credentials.json","/1/account/verify_credentials.xml"):
            profile=map_profile(public("app.bsky.actor.getProfile",{"actor":s["did"]}))
            remember_profiles(c,[profile])
            if path.endswith(".xml"):
                root=ET.Element("user")
                for key,value in profile.items():
                    if key.startswith("_"): continue
                    ET.SubElement(root,key).text=str(value).lower() if isinstance(value,bool) else str(value)
                return 200,b'<?xml version="1.0" encoding="UTF-8"?>'+ET.tostring(root,encoding="utf-8"),"application/xml; charset=utf-8"
            return 200,profile,"application/json"
        if path=="/1/statuses/update.json" and self.command=="POST":
            p=self.body(); text=p.get("status") if isinstance(p,dict) else None
            if isinstance(text,list): text=text[0] if text else ""
            if not text: text=(q.get("status") or [""])[0]
            if not isinstance(text,str) or not text.strip() or len(text)>300: raise BridgeError(400,"Post text must contain 1-300 characters")
            record={"$type":"app.bsky.feed.post","text":text,"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}
            created=session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.feed.post","record":record})
            item={"uri":created["uri"],"cid":created.get("cid",""),"author":{"did":s["did"],"handle":s["handle"]},"record":record}
            return 200,remember_posts(c,[map_post(item)])[0],"application/json"
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
            deleted=map_post({"post":{"uri":found["uri"],"cid":found.get("cid",""),"author":{"did":s["did"],"handle":s["handle"]},"record":found.get("value",{})}})
            remember_posts(c,[deleted]); deleted["deleted"]=True
            return 200,deleted,"application/json"
        if path=="/1/statuses/home_timeline.json":
            feed=session_request(c,s,"GET","app.bsky.feed.getTimeline",{"limit":min(int((q.get("count") or [50])[0]),100)})
            posts=mapped_posts(feed)
            # A new Bluesky account may follow nobody, yielding an empty
            # timeline even though it has its own posts.  Legacy Twitter's
            # home screen still showed the signed-in account's activity, so
            # include the author's feed as a useful local replacement.
            if not posts:
                own=session_request(c,s,"GET","app.bsky.feed.getAuthorFeed",{"actor":s["did"],"limit":min(int((q.get("count") or [50])[0]),100)})
                posts=mapped_posts(own)
            # The legacy provider incorrectly keys Home rows by the returned
            # user's numeric id. Keep the visible author fields intact, but
            # use the signed-in owner id for the grouping key it persists.
            owner_id=legacy_id(s["did"])
            for post in posts:
                user=post.get("user") or {}
                user["_home_owner_id"]=owner_id
                user["id"]=owner_id; user["id_str"]=str(owner_id)
            return 200,remember_posts(c,posts),"application/json"
        if path=="/1/statuses/friends.json":
            actor=profile_actor(c,s,(q.get("screen_name") or [None])[0],(q.get("user_id") or [None])[0])
            if not actor: raise BridgeError(404,"Profile not found in Tailstter cache")
            params={"actor":actor,"limit":100}
            cursor=(q.get("cursor") or [""])[0]
            if cursor not in ("","0","-1"): params["cursor"]=cursor
            try: follows=public("app.bsky.graph.getFollows",params)
            except BridgeError as e:
                if "cursor" not in params or e.status not in (400,404): raise
                params.pop("cursor"); follows=public("app.bsky.graph.getFollows",params)
            users=remember_profiles(c,[map_profile(user) for user in follows.get("follows",[])])
            next_cursor=follows.get("cursor") or "0"
            # The old sync adapter parses an object with a `users` array and
            # a string `next_cursor`; a bare array or a timeline response
            # leaves its user collection null and crashes in SQLite sync.
            return 200,{"users":users,"next_cursor":next_cursor,"next_cursor_str":next_cursor},"application/json"
        if path=="/1/statuses/mentions.json":
            try: result=public("app.bsky.feed.searchPosts",{"q":"@"+s["handle"],"limit":min(int((q.get("count") or [50])[0]),100)})
            except BridgeError as e:
                if e.status not in (400,403,404): raise
                return 200,[],"application/json"
            mentions=[map_post({"post":p}) for p in result.get("posts",[]) if s["handle"].lower() in p.get("record",{}).get("text","").lower()]
            return 200,remember_posts(c,mentions),"application/json"
        if path in ("/1/statuses/retweeted_by_me.json","/1/statuses/retweeted_to_me.json"):
            feed=public("app.bsky.feed.getAuthorFeed",{"actor":s["did"],"limit":100})
            reposts=[v for v in feed.get("feed",[]) if (v.get("reason") or {}).get("$type","").endswith("#reasonRepost")]
            return 200,remember_posts(c,mapped_posts({"feed":reposts})),"application/json"
        if path.startswith("/1/trends/") and self.command=="GET":
            return 200,{"as_of":datetime.now(timezone.utc).isoformat().replace("+00:00","Z"),"trends":[]},"application/json"
        if path=="/1/promoted_tweets/search.json" and self.command=="GET": return 200,{"promoted_tweets":[]},"application/json"
        if path=="/1/saved_searches.json" and self.command=="GET":
            rows=c.execute("SELECT id,query,created_at FROM saved_searches WHERE session_token=? ORDER BY id DESC",(s["token"],)).fetchall()
            return 200,[{"id":r[0],"id_str":str(r[0]),"name":r[1],"query":r[1],"created_at":r[2]} for r in rows],"application/json"
        if path=="/1/saved_searches/create.json" and self.command=="POST":
            p=self.body(); query=first_value(p,q,"query")
            if not query: raise BridgeError(400,"query is required")
            created_at=datetime.now(timezone.utc).strftime("%a %b %d %H:%M:%S +0000 %Y")
            cur=c.execute("INSERT INTO saved_searches(session_token,query,created_at) VALUES(?,?,?)",(s["token"],query,created_at))
            return 200,{"id":cur.lastrowid,"id_str":str(cur.lastrowid),"name":query,"query":query,"created_at":created_at},"application/json"
        if path.startswith("/1/saved_searches/destroy/") and self.command in ("POST","DELETE"):
            target=path.rsplit("/",1)[-1]; target=target[:-5] if target.endswith(".json") else target
            c.execute("DELETE FROM saved_searches WHERE id=? AND session_token=?",(int(target),s["token"]))
            return 200,{"id":int(target),"destroyed":True},"application/json"
        if path=="/1/urls/shorten.json" and self.command=="GET":
            url=(q.get("url") or [""])[0]
            return 200,{"url":url,"short_url":url,"short_url_https":url},"application/json"
        if path=="/1/promoted_content/log.json" and self.command=="POST": return 200,{},"application/json"
        if re.fullmatch(r"/1/push_destinations(?:/(?:update|destroy))?\.json",path):
            return 200,([] if self.command=="GET" else {"ok":True}),"application/json"
        if path=="/1/geo/reverse_geocode.json" and self.command=="GET": return 200,{"result":{"places":[]}},"application/json"
        if path=="/1/geo/geocode.json" and self.command=="GET": return 200,{"results":[]},"application/json"
        if path in ("/1/report_spam.json","/1/users/report_spam.json") and self.command=="POST":
            p=self.body(); actor=first_value(p,q,"screen_name",s["handle"])
            result=map_profile(public("app.bsky.actor.getProfile",{"actor":actor}))
            result["reported"]=True
            return 200,result,"application/json"
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
            actor=profile_actor(c,s,(q.get("screen_name") or [None])[0],(q.get("user_id") or [None])[0])
            if not actor: raise BridgeError(404,"Profile not found in Tailstter cache")
            feed=public("app.bsky.feed.getActorLikes",{"actor":actor,"limit":min(int((q.get("count") or [50])[0]),100)})
            return 200,remember_posts(c,mapped_posts(feed)),"application/json"
        if path=="/1/statuses/retweets_of_me.json" and self.command=="GET":
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
            result=map_post({"post":thread}); result["retweeted"]=True
            return 200,remember_posts(c,[result])[0],"application/json"
        favorite_match=re.fullmatch(r"/1/favorites/(create|destroy)(?:/(\d+))?\.json",path)
        if favorite_match and self.command in ("POST","DELETE"):
            action,path_id=favorite_match.groups(); p=self.body()
            target=path_id or first_value(p,q,"id") or first_value(p,q,"status_id")
            row=resolve_post(c,target)
            if not row: raise BridgeError(404,"Post not found; load the timeline first")
            existing=next((r for r in at_records(c,s,"app.bsky.feed.like") if r.get("value",{}).get("subject",{}).get("uri")==row["uri"]),None)
            if action=="create" and not existing:
                record={"$type":"app.bsky.feed.like","subject":{"uri":row["uri"],"cid":row["cid"]},"createdAt":datetime.now(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00","Z")}
                session_request(c,s,"POST","com.atproto.repo.createRecord",body={"repo":s["did"],"collection":"app.bsky.feed.like","record":record})
            elif action=="destroy" and existing:
                session_request(c,s,"POST","com.atproto.repo.deleteRecord",body={"repo":s["did"],"collection":"app.bsky.feed.like","rkey":existing["uri"].rsplit("/",1)[-1]})
            result=legacy_post_object(row); result["favorited"]=action=="create"
            return 200,result,"application/json"
        if path=="/1/account/rate_limit_status.json":
            return 200,{"resources":{},"remaining_hits":1000,"hourly_limit":1000,"reset_time_in_seconds":int(time.time())+3600},"application/json"
        if path=="/1/account/update_profile.json" and self.command=="POST":
            p=self.body()
            try: old=session_request(c,s,"GET","com.atproto.repo.getRecord",{"repo":s["did"],"collection":"app.bsky.actor.profile","rkey":"self"})
            except BridgeError as e:
                if e.status not in (400,404): raise
                old={}
            record=old.get("value",{"$type":"app.bsky.actor.profile"})
            display=first_value(p,q,"name"); bio=first_value(p,q,"description")
            if display: record["displayName"]=display
            if bio: record["description"]=bio
            website=first_value(p,q,"url")
            if website: record["website"]=website
            session_request(c,s,"POST","com.atproto.repo.putRecord",body={"repo":s["did"],"collection":"app.bsky.actor.profile","rkey":"self","record":record})
            return 200,map_profile(public("app.bsky.actor.getProfile",{"actor":s["did"]})),"application/json"
        if path in ("/1/account/settings.json","/1/client_applications/configuration.json"):
            return 200,{"protected":False,"screen_name":s["handle"],"language":"en","time_zone":"UTC","geo_enabled":False,"short_url_length":23,"scribe_interval":0,"scribe_enabled":False},"application/json"
        if path=="/1/statuses/user_timeline.json":
            actor=profile_actor(c,s,(q.get("screen_name") or [None])[0],(q.get("user_id") or [None])[0])
            if not actor: raise BridgeError(404,"Profile not found in Tailstter cache")
            feed=public("app.bsky.feed.getAuthorFeed",{"actor":actor,"limit":min(int((q.get("count") or [50])[0]),100)})
            return 200,remember_posts(c,mapped_posts(feed)),"application/json"
        if path=="/1/search/tweets.json":
            term=(q.get("q") or [""])[0]
            if not term: raise BridgeError(400,"Search query is required")
            # Search is authenticated on some PDS deployments; use the
            # signed-in session rather than an unauthenticated public call.
            result=session_request(c,s,"GET","app.bsky.feed.searchPosts",{"q":term,"limit":min(int((q.get("count") or q.get("rpp") or [25])[0]),100)})
            posts=[map_post({"post":p}) for p in result.get("posts",[])]
            # Twitter's retired search endpoint returns a distinct result
            # schema (`from_user`, root `profile_image_url`, and `metadata`),
            # which this app parses instead of the statuses/user-timeline
            # model. Keep a normal statuses array too for API compatibility.
            search_results=[]
            for post in posts:
                user=post.get("user",{})
                search_results.append({"created_at":post["created_at"],"source":"","text":post["text"],
                  "profile_image_url":user.get("profile_image_url",""),"to_user":"","from_user":user.get("screen_name",""),
                  "from_user_id":user.get("id",0),"id":post["id"],"metadata":{"result_type":"recent","popular":False,"recent_retweets":0}})
            remember_posts(c,posts)
            return 200,{"statuses":posts,"results":search_results,"search_metadata":{"query":term,"count":len(posts)},"results_per_page":len(posts)},"application/json"
        if path=="/1/users/show.json":
            actor=profile_actor(c,s,(q.get("screen_name") or [None])[0],(q.get("user_id") or [None])[0])
            if not actor: raise BridgeError(404,"Profile not found in Tailstter cache")
            profile=map_profile(public("app.bsky.actor.getProfile",{"actor":actor}))
            return 200,remember_profiles(c,[profile])[0],"application/json"
        if path=="/1/users/lookup.json":
            handles=(q.get("screen_name") or [None])[0]
            ids=(q.get("user_id") or [None])[0]
            actors=(handles or ids or "").split(",")
            profiles=[]
            for actor in actors[:25]:
                if actor.strip():
                    resolved=profile_actor(c,s,actor.strip(),actor.strip() if actor.strip().isdigit() else None)
                    if not resolved: continue
                    try: profiles.append(map_profile(public("app.bsky.actor.getProfile",{"actor":resolved})))
                    except BridgeError as e:
                        if e.status not in (400,404): raise
            return 200,remember_profiles(c,profiles),"application/json"
        if path=="/1/users/search.json":
            term=(q.get("q") or [""])[0]
            result=public("app.bsky.actor.searchActors",{"q":term,"limit":min(int((q.get("count") or [20])[0]),100)}) if term else {"actors":[]}
            return 200,remember_profiles(c,[map_profile(p) for p in result.get("actors",[])]),"application/json"
        if path=="/1/users/suggestions.json": return 200,[],"application/json"
        if re.fullmatch(r"/1/users/suggestions/[^/]+\.json",path):
            sug=session_request(c,s,"GET","app.bsky.actor.getSuggestions",{"limit":20})
            users=remember_profiles(c,[map_profile(p) for p in sug.get("actors",[])])
            return 200,{"users":users,"next_cursor":"0","next_cursor_str":"0"},"application/json"
        if path=="/1/statuses/followers.json":
            actor=profile_actor(c,s,(q.get("screen_name") or [None])[0],(q.get("user_id") or [None])[0])
            if not actor: raise BridgeError(404,"Profile not found in Tailstter cache")
            params={"actor":actor,"limit":min(int((q.get("count") or [50])[0]),100)}
            cursor=(q.get("cursor") or [""])[0]
            if cursor not in ("","0","-1"): params["cursor"]=cursor
            try: result=public("app.bsky.graph.getFollowers",params)
            except BridgeError as e:
                if "cursor" not in params or e.status not in (400,404): raise
                params.pop("cursor"); result=public("app.bsky.graph.getFollowers",params)
            users=remember_profiles(c,[map_profile(p) for p in result.get("followers",[])])
            cursor=result.get("cursor") or "0"
            return 200,{"users":users,"next_cursor":cursor,"next_cursor_str":cursor},"application/json"
        if path=="/1/friendships/show.json":
            other=(q.get("target_screen_name") or q.get("screen_name") or [None])[0]
            other_id=(q.get("target_id") or q.get("user_id") or [None])[0]
            did=profile_actor(c,s,other,other_id)
            if not did: raise BridgeError(404,"Profile not found in Tailstter cache")
            target_profile=public("app.bsky.actor.getProfile",{"actor":did})
            rel=public("app.bsky.graph.getRelationships",{"actor":s["did"],"others":[did]}).get("relationships",[{}])[0]
            target=remember_profiles(c,[map_profile(target_profile)])[0]
            return 200,{"relationship":{"source":{"following":bool(rel.get("following")),"followed_by":bool(rel.get("followedBy"))},"target":{"id_str":str(target["id"]),"screen_name":target["screen_name"]}}},"application/json"
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
        # The old client uses both /lists/{id}/members and the REST v1
        # /{owner_id}/{list_id}/members form. Lists are locally owned by the
        # signed-in bridge account, so reject attempts to operate on another
        # owner's local list namespace.
        nested_list=re.fullmatch(r"/1/([^/]+)/(\d+)/(members|subscribers|statuses)\.json",path)
        if nested_list and nested_list.group(1).lower()!="lists":
            owner,list_id,sub=nested_list.groups()
            if not legacy_owner_is_session(owner,s): raise BridgeError(404,"List not found")
            path=f"/1/lists/{list_id}/{sub}.json"
        owner_list=re.fullmatch(r"/1/([^/]+)/lists(?:/([^/]+))?\.json",path)
        if owner_list and owner_list.group(1).lower()!="lists" and self.command=="GET":
            owner,query=owner_list.groups()
            if query and query not in ("memberships","subscriptions"):
                if not legacy_owner_is_session(owner,s): raise BridgeError(404,"List not found")
                row=c.execute("SELECT * FROM legacy_lists WHERE session_token=? AND lower(name)=lower(?) ORDER BY id DESC LIMIT 1",(s["token"],query)).fetchone()
                if not row: raise BridgeError(404,"List not found")
                return 200,legacy_list_object(row,c,s),"application/json"
            values=[]
            if query not in ("memberships","subscriptions") and legacy_owner_is_session(owner,s):
                rows=c.execute("SELECT * FROM legacy_lists WHERE session_token=? ORDER BY id DESC",(s["token"],)).fetchall()
                values=[legacy_list_object(r,c,s) for r in rows]
            return 200,{"lists":values,"next_cursor":"0","next_cursor_str":"0"},"application/json"
        owner_id_list=re.fullmatch(r"/1/([^/]+)/(\d+)\.json",path)
        if owner_id_list and owner_id_list.group(1).lower()!="lists" and self.command=="GET":
            owner,list_id=owner_id_list.groups()
            if not legacy_owner_is_session(owner,s): raise BridgeError(404,"List not found")
            row=c.execute("SELECT * FROM legacy_lists WHERE id=? AND session_token=?",(list_id,s["token"])).fetchone()
            if not row: raise BridgeError(404,"List not found")
            return 200,legacy_list_object(row,c,s),"application/json"
        list_alias=re.fullmatch(r"/1/(\d+)/(members|subscribers|statuses)\.json",path)
        if list_alias:
            list_id,sub=list_alias.groups(); path=f"/1/lists/{list_id}/{sub}.json"
        list_match=re.match(r"^/1/lists/(\d+)(?:/(members|subscribers|statuses))?\.json$",path)
        if path in ("/1/lists/memberships.json","/1/lists/subscriptions.json") and self.command=="GET":
            return 200,{"lists":[],"next_cursor":"0","next_cursor_str":"0"},"application/json"
        if path in ("/1/lists.json","/1/lists/list.json") and self.command=="GET":
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
            c.execute("DELETE FROM legacy_list_subscribers WHERE list_id IN (SELECT id FROM legacy_lists WHERE id=? AND session_token=?)",(ident,s["token"]))
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
                refreshed=c.execute("SELECT * FROM legacy_lists WHERE id=?",(ident,)).fetchone()
                return 200,legacy_list_object(refreshed,c,s),"application/json"
            if sub=="members":
                users=[map_profile({"did":m[0],"handle":m[1]}) for m in c.execute("SELECT did,handle FROM legacy_list_members WHERE list_id=?",(ident,))]
                return 200,{"users":users,"next_cursor":"0","next_cursor_str":"0"},"application/json"
            if sub=="statuses":
                posts=[]
                for m in c.execute("SELECT handle FROM legacy_list_members WHERE list_id=?",(ident,)):
                    feed=public("app.bsky.feed.getAuthorFeed",{"actor":m[0],"limit":20})
                    posts.extend(mapped_posts(feed).copy())
                posts.sort(key=lambda x:x.get("created_at",""),reverse=True)
                return 200,remember_posts(c,posts[:100]),"application/json"
            if sub=="subscribers":
                if self.command=="GET":
                    users=[map_profile({"did":m[0],"handle":m[1]}) for m in c.execute("SELECT did,handle FROM legacy_list_subscribers WHERE list_id=?",(ident,))]
                    return 200,{"users":users,"next_cursor":"0","next_cursor_str":"0"},"application/json"
                p=self.body(); handle=first_value(p,q,"screen_name")
                if not handle: raise BridgeError(400,"screen_name is required")
                actor=public("app.bsky.actor.getProfile",{"actor":handle})
                if self.command=="POST": c.execute("INSERT OR REPLACE INTO legacy_list_subscribers(list_id,did,handle) VALUES(?,?,?)",(ident,actor["did"],actor["handle"]))
                else: c.execute("DELETE FROM legacy_list_subscribers WHERE list_id=? AND did=?",(ident,actor["did"]))
                refreshed=c.execute("SELECT * FROM legacy_lists WHERE id=?",(ident,)).fetchone()
                return 200,legacy_list_object(refreshed,c,s),"application/json"
            return 200,legacy_list_object(row,c,s),"application/json"
        if path in ("/1/friendships/create.json","/1/friendships/destroy.json") and self.command in ("POST","DELETE"):
            p=self.body(); handle=first_value(p,q,"screen_name")
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
                mapped=map_profile(profile); mapped["following"]=True
                return 200,mapped,"application/json"
            if existing:
                rkey=existing["uri"].rsplit("/",1)[-1]
                session_request(c,s,"POST","com.atproto.repo.deleteRecord",body={"repo":s["did"],"collection":"app.bsky.graph.follow","rkey":rkey})
            mapped=map_profile(profile); mapped["following"]=False
            return 200,mapped,"application/json"
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
        # Log only method, a redacted route, status, and byte count. Query
        # strings can contain XAuth passwords and search text; request bodies
        # can contain post or DM content.
        request=args[0] if args and isinstance(args[0],str) else ""
        parts=request.split()
        if len(parts)>=2 and parts[0] in ("GET","POST","DELETE","PUT","HEAD"):
            path=urlparse(parts[1]).path
            path=re.sub(r"^/1/[^/]+/lists(?:/[^/]+)?\.json$","/1/{owner}/lists[/{slug}].json",path)
            path=re.sub(r"^/1/[^/]+/\d+/(members|subscribers|statuses)\.json$",r"/1/{owner}/{id}/\1.json",path)
            path=re.sub(r"^/1/[^/]+/\d+\.json$","/1/{owner}/{id}.json",path)
            path=re.sub(r"^/1/users/suggestions/[^/]+\.json$","/1/users/suggestions/{slug}.json",path)
            path=re.sub(r"^/1/statuses/(show|destroy|retweet)/\d+\.json$",r"/1/statuses/\1/{id}.json",path)
            path=re.sub(r"^/1/favorites/(create|destroy)/\d+\.json$",r"/1/favorites/\1/{id}.json",path)
            path=re.sub(r"^/1/lists/\d+(?:/(members|subscribers|statuses))?\.json$","/1/lists/{id}[/{resource}].json",path)
            code=args[1] if len(args)>1 else "?"
            size=args[2] if len(args)>2 else "?"
            print("TailstterBridge request method=%s path=%s status=%s bytes=%s"%(parts[0],path,code,size),file=sys.stderr,flush=True)
        else:
            print("TailstterBridge malformed HTTP request",file=sys.stderr,flush=True)


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
