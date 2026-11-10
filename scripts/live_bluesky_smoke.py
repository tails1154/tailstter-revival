#!/usr/bin/env python3
"""Create one short live post through the bridge, delete it, and log out."""
import json, os, sys
from urllib.parse import urlencode, parse_qs
from urllib.request import Request, urlopen
from urllib.error import HTTPError

BASE=os.environ.get("TAILSTTER_TEST_BASE","http://tails1154.com:6483").rstrip("/")
HANDLE=os.environ["TAILSTTER_TEST_HANDLE"]
APP_PASSWORD=os.environ["TAILSTTER_TEST_APP_PASSWORD"]

def request(path,method="GET",body=None,auth=None):
    data=body
    headers={"Accept":"application/json"}
    if auth: headers["Authorization"]=auth
    if data is not None: headers["Content-Type"]="application/json"
    req=Request(BASE+path,data=data,headers=headers,method=method)
    try:
        with urlopen(req,timeout=25) as r: return r.status,r.read()
    except HTTPError as e: return e.code,e.read()

token=None; post_id=None; deleted=False; logged_out=False
try:
    query=urlencode({"x_auth_mode":"client_auth","x_auth_username":HANDLE,"x_auth_password":APP_PASSWORD})
    code,raw=request("/oauth/access_token?"+query,"POST",b"")
    if code!=200: raise RuntimeError("Bluesky sign-in was rejected (HTTP %d)"%code)
    token=parse_qs(raw.decode())["oauth_token"][0]
    auth='OAuth realm="Tailstter", oauth_token="'+token+'", oauth_signature_method="HMAC-SHA1"'
    post_text="Tailstter bridge test; deleting shortly."
    code,raw=request("/1/statuses/update.json?"+urlencode({"status":post_text}),"POST",b"",auth)
    if code!=200: raise RuntimeError("Test post failed (HTTP %d)"%code)
    post=json.loads(raw); post_id=post["id"]
    code,raw=request("/1/statuses/destroy.json?"+urlencode({"status_id":post_id}),"POST",b"",auth)
    if code!=200 or not json.loads(raw).get("deleted"): raise RuntimeError("Test post deletion failed (HTTP %d)"%code)
    deleted=True
finally:
    if token:
        code,raw=request("/oauth/logout","POST",b"",'OAuth realm="Tailstter", oauth_token="'+token+'", oauth_signature_method="HMAC-SHA1"')
        logged_out=code==200
if post_id is not None and not deleted:
    raise SystemExit("A test post may still exist; delete it immediately from the Bluesky app.")
if token and not logged_out:
    raise SystemExit("Post deleted, but the temporary bridge/Bluesky session did not log out.")
print("Live bridge smoke test passed: post %s was deleted and the temporary session logged out."%post_id)
