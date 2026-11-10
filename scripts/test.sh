#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
TMP=$(mktemp -d)
trap 'python3 -c "from pathlib import Path; p=Path(\"$TMP\"); [f.unlink() for f in p.iterdir() if f.is_file()]; p.rmdir()"' EXIT INT TERM
TAILSTTER_TEST_DB="$TMP/test.sqlite3" PYTHONPATH="$ROOT" python3 - <<'PY'
import os
from pathlib import Path
from urllib.parse import parse_qs
import backend.app as api
api.DB_PATH=Path(os.environ['TAILSTTER_TEST_DB'])
feed_item={'post':{'uri':'at://did:plc:alice/app.bsky.feed.post/abc','cid':'cidabc','indexedAt':'2025-01-01T00:00:00Z','record':{'text':'A Bluesky post','createdAt':'2025-01-01T00:00:00Z'},'author':{'did':'did:plc:alice','handle':'alice.bsky.social','displayName':'Alice'}}}
calls=[]
expired_once=True
created_post_uri=None
def fake_at(service,method,endpoint,params=None,body=None,token=None,extra_headers=None):
    global expired_once,created_post_uri
    calls.append((method,endpoint,params,body,token,extra_headers))
    if endpoint.endswith('createSession'):
        assert body=={'identifier':'alice.bsky.social','password':'app-password'}
        return {'did':'did:plc:alice','handle':'alice.bsky.social','accessJwt':'jwt-access','refreshJwt':'jwt-refresh'}
    if endpoint.endswith('refreshSession'): return {'accessJwt':'jwt-renewed','refreshJwt':'jwt-refresh-2'}
    if endpoint.endswith('deleteSession'): return {}
    if endpoint.endswith('listConvos'): return {'convos':[]}
    if endpoint.endswith('getConvoForMembers'): return {'convo':{'id':'convo1'}}
    if endpoint.endswith('sendMessage'): return {'message':{'id':'message1','sender':{'did':'did:plc:alice','handle':'alice.bsky.social'},'text':body['message']['text'],'sentAt':'2025-01-01T00:00:00Z'}}
    if endpoint.endswith('getTimeline'):
        if expired_once:
            expired_once=False
            raise api.BridgeError(401,'expired')
        return {'feed':[feed_item]}
    if endpoint.endswith('getAuthorFeed'): return {'feed':[feed_item]}
    if endpoint.endswith('searchPosts'): return {'posts':[feed_item['post']]}
    if endpoint.endswith('getProfile'): return {'did':'did:plc:alice','handle':'alice.bsky.social','displayName':'Alice','followersCount':2,'followsCount':3,'postsCount':4}
    if endpoint.endswith('createRecord'):
        uri='at://did:plc:alice/'+body['collection']+'/record1'
        if body['collection']=='app.bsky.feed.post': created_post_uri=uri
        return {'uri':uri,'cid':'recordcid'}
    if endpoint.endswith('listRecords'):
        if body is None and params.get('collection')=='app.bsky.feed.post' and created_post_uri:
            return {'records':[{'uri':created_post_uri,'value':{'text':'A new post'}}]}
        return {'records':[]}
    if endpoint.endswith('deleteRecord'): return {}
    raise AssertionError('unexpected AT call '+endpoint)
api.at_request=fake_at
api.public=lambda endpoint,params=None: fake_at(api.BSKY_PUBLIC,'GET',endpoint,params)
class Request:
    command='GET'
    headers={}
    def body(self): return {}
def call(path,command='GET',params=None,token=None):
    r=Request(); r.command=command; r.headers={'Authorization':token} if token else {}
    c=api.connect()
    try:
        result=api.Handler.route(r,c,path,{k:[v] for k,v in (params or {}).items()})
        c.commit()
        if path=='/oauth/access_token': return result
        return result[1] if isinstance(result,tuple) else result
    finally: c.close()
code,raw,ctype=call('/oauth/access_token','POST',{'x_auth_mode':'client_auth','x_auth_username':'@alice.bsky.social','x_auth_password':'app-password'})
assert code==200 and ctype.startswith('text/plain')
oauth=parse_qs(raw.decode()); token=oauth['oauth_token'][0]
auth='OAuth realm="Tailstter", oauth_token="'+token+'", oauth_signature_method="HMAC-SHA1"'
profile=call('/1/account/verify_credentials.json',token=auth)
assert profile['screen_name']=='alice.bsky.social' and profile['id_str']==str(profile['id'])
created=call('/1/statuses/update.json','POST',{'status':'A new post'},auth)
assert created['text']=='A new post' and created['id_str']==str(created['id']) and calls[-1][1]=='com.atproto.repo.createRecord'
assert call('/1/statuses/destroy.json','POST',{'status_id':str(created['id'])},auth)['deleted']
assert any(x[1]=='com.atproto.repo.deleteRecord' for x in calls)
timeline=call('/1/statuses/home_timeline.json',token=auth)
assert timeline[0]['text']=='A Bluesky post'
assert call('/1/statuses/friends.json',token=auth)[0]['text']=='A Bluesky post'
assert call('/1/statuses/retweets_of_me.json',token=auth)==[]
assert call('/1/direct_messages.json',token=auth)==[]
assert calls[-1][5]==api.CHAT_HEADERS
dm=call('/1/direct_messages/new.json','POST',{'screen_name':'alice.bsky.social','text':'hello'},auth)
assert dm['text']=='hello' and any(x[1]=='chat.bsky.convo.sendMessage' and x[5]==api.CHAT_HEADERS for x in calls)
assert call('/1/63987262966206026/lists.json',token=auth)==[]
assert any(x[1]=='com.atproto.server.refreshSession' for x in calls)
assert call('/1/statuses/user_timeline.json',params={'screen_name':'alice.bsky.social'},token=auth)[0]['text']=='A Bluesky post'
assert call('/1/search/tweets.json',params={'q':'Bluesky'},token=auth)['statuses'][0]['text']=='A Bluesky post'
assert call('/1/users/show.json',params={'screen_name':'alice.bsky.social'},token=auth)['screen_name']=='alice.bsky.social'
assert call('/1/friendships/create.json','POST',{'screen_name':'alice.bsky.social'},auth)['following']
assert call('/oauth/logout','POST',token=auth)['ok']
assert calls[-1][1]=='com.atproto.server.deleteSession' and calls[-1][4]=='jwt-refresh-2'
try: call('/1/account/verify_credentials.json',token=auth)
except api.BridgeError as e: assert e.status==401
else: raise AssertionError('logged-out AT bridge session remained valid')
print('Tailstter bridge tests passed: XAuth-to-AT session, refresh, profile, create/delete post, timeline, author feed, search, and follow mapping')
PY
