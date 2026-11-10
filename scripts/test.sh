#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
TMP=$(mktemp -d)
trap 'python3 -c "from pathlib import Path; p=Path(\"$TMP\"); [f.unlink() for f in p.iterdir() if f.is_file()]; p.rmdir()"' EXIT INT TERM
TAILSTTER_TEST_DB="$TMP/test.sqlite3" PYTHONPATH="$ROOT" python3 - <<'PY'
import os
import io
from pathlib import Path
from urllib.parse import parse_qs
import backend.app as api
api.DB_PATH=Path(os.environ['TAILSTTER_TEST_DB'])
feed_item={'post':{'uri':'at://did:plc:alice/app.bsky.feed.post/abc','cid':'cidabc','indexedAt':'2025-01-01T00:00:00Z','record':{'text':'A Bluesky post','createdAt':'2025-01-01T00:00:00Z'},'author':{'did':'did:plc:alice','handle':'alice.bsky.social','displayName':'Alice'}}}
calls=[]
expired_once=True
created_post_uri=None
repo_records={}
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
            raise api.BridgeError(400,'Token has expired','ExpiredToken')
        return {'feed':[feed_item]}
    if endpoint.endswith('getAuthorFeed'): return {'feed':[feed_item]}
    if endpoint.endswith('searchPosts'): return {'posts':[feed_item['post']]}
    if endpoint.endswith('getProfile'):
        if params and params.get('actor')=='bob.bsky.social': return {'did':'did:plc:bob','handle':'bob.bsky.social','displayName':'Bob'}
        return {'did':'did:plc:alice','handle':'alice.bsky.social','displayName':'Alice','followersCount':2,'followsCount':3,'postsCount':4}
    if endpoint.endswith('getFollows'): return {'follows':[{'did':'did:plc:alice','handle':'alice.bsky.social','displayName':'Alice'}]}
    if endpoint.endswith('getFollowers'): return {'followers':[{'did':'did:plc:alice','handle':'alice.bsky.social','displayName':'Alice'}]}
    if endpoint.endswith('getSuggestions'): return {'actors':[{'did':'did:plc:alice','handle':'alice.bsky.social','displayName':'Alice'}]}
    if endpoint.endswith('getActorLikes'): return {'feed':[feed_item]}
    if endpoint.endswith('getPostThread'): return {'thread':{'post':feed_item['post']}}
    if endpoint.endswith('getRelationships'): return {'relationships':[{'following':True,'followedBy':False}]}
    if endpoint.endswith('getRecord'): raise api.BridgeError(404,'profile record missing')
    if endpoint.endswith('putRecord'):
        assert body['record']['website']=='https://example.invalid'
        return {}
    if endpoint.endswith('createRecord'):
        uri='at://did:plc:alice/'+body['collection']+'/record1'
        if body['collection']=='app.bsky.feed.post': created_post_uri=uri
        repo_records.setdefault(body['collection'],[]).append({'uri':uri,'cid':'recordcid','value':body['record']})
        return {'uri':uri,'cid':'recordcid'}
    if endpoint.endswith('listRecords'):
        return {'records':repo_records.get(params.get('collection'),[])}
    if endpoint.endswith('deleteRecord'):
        for collection,records in repo_records.items():
            repo_records[collection]=[r for r in records if r['uri'].rsplit('/',1)[-1]!=body.get('rkey')]
        return {}
    raise AssertionError('unexpected AT call '+endpoint)
api.at_request=fake_at
api.public=lambda endpoint,params=None: fake_at(api.BSKY_PUBLIC,'GET',endpoint,params)
class Request:
    command='GET'
    headers={}
    rfile=io.BytesIO()
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
assert call('/scribe','POST',{})=={}
assert call('/mobile_client_api/signup','POST',{})['error'].startswith('Tailstter uses Bluesky accounts')
profile=call('/1/account/verify_credentials.json',token=auth)
assert profile['screen_name']=='alice.bsky.social' and profile['id_str']==str(profile['id'])
xml_profile=call('/1/account/verify_credentials.xml',token=auth)
assert b'<user>' in xml_profile and b'<screen_name>alice.bsky.social</screen_name>' in xml_profile
updated_profile=call('/1/account/update_profile.json','POST',{'name':'Alice Updated','description':'New bio','url':'https://example.invalid'},auth)
assert updated_profile['screen_name']=='alice.bsky.social' and any(x[1]=='com.atproto.repo.putRecord' for x in calls)
created=call('/1/statuses/update.json','POST',{'status':'A new post'},auth)
assert created['text']=='A new post' and created['id_str']==str(created['id']) and calls[-1][1]=='com.atproto.repo.createRecord'
assert call('/1/statuses/destroy.json','POST',{'status_id':str(created['id'])},auth)['deleted']
assert any(x[1]=='com.atproto.repo.deleteRecord' for x in calls)
timeline=call('/1/statuses/home_timeline.json',token=auth)
assert timeline[0]['text']=='A Bluesky post'
assert call('/1/statuses/show/'+str(timeline[0]['id'])+'.json',token=auth)['text']=='A Bluesky post'
assert call('/1/favorites.json',token=auth)[0]['text']=='A Bluesky post'
favorite=call('/1/favorites/create/'+str(timeline[0]['id'])+'.json','POST',{},auth)
assert favorite['id']==timeline[0]['id'] and favorite['favorited'] is True and favorite['user']['screen_name']=='alice.bsky.social'
favorite=call('/1/favorites/destroy/'+str(timeline[0]['id'])+'.json','POST',{},auth)
assert favorite['favorited'] is False and any(x[1]=='com.atproto.repo.deleteRecord' for x in calls)
retweet=call('/1/statuses/retweet/'+str(timeline[0]['id'])+'.json','POST',{},auth)
assert retweet['retweeted'] is True and retweet['user']['screen_name']=='alice.bsky.social'
friends=call('/1/statuses/friends.json',token=auth)
assert friends['users'][0]['screen_name']=='alice.bsky.social' and friends['next_cursor']=='0'
assert call('/1/statuses/retweets_of_me.json',token=auth)==[]
assert call('/1/direct_messages.json',token=auth)==[]
assert calls[-1][5]==api.CHAT_HEADERS
dm=call('/1/direct_messages/new.json','POST',{'screen_name':'bob.bsky.social','text':'hello'},auth)
assert dm['text']=='hello' and dm['sender']['screen_name']=='alice.bsky.social' and dm['recipient']['screen_name']=='bob.bsky.social' and any(x[1]=='chat.bsky.convo.sendMessage' and x[5]==api.CHAT_HEADERS for x in calls)
assert call('/1/63987262966206026/lists.json',token=auth)=={'lists':[],'next_cursor':'0','next_cursor_str':'0'}
trends=call('/1/trends/1.json',token=auth)
assert isinstance(trends['as_of'],str) and trends['trends']==[]
saved=call('/1/saved_searches/create.json','POST',{'query':'Bluesky'},auth)
assert saved['query']=='Bluesky' and call('/1/saved_searches.json',token=auth)[0]['id']==saved['id']
created_list=call('/1/lists/create.json','POST',{'name':'friends','mode':'private'},auth)
assert created_list['name']=='friends' and call('/1/lists/list.json',token=auth)[0]['id']==created_list['id']
owner_lists=call('/1/alice.bsky.social/lists.json',token=auth)
assert owner_lists['lists'][0]['id']==created_list['id'] and owner_lists['next_cursor']=='0'
assert call('/1/alice.bsky.social/lists/friends.json',token=auth)['id']==created_list['id']
assert call('/1/alice.bsky.social/lists/subscriptions.json',token=auth)=={'lists':[],'next_cursor':'0','next_cursor_str':'0'}
owner_id=str(profile['id'])
numeric_owner_lists=call(f'/1/{owner_id}/lists.json',token=auth)
assert numeric_owner_lists['lists'][0]['id']==created_list['id'] and numeric_owner_lists['next_cursor']=='0'
assert call(f'/1/{owner_id}/{created_list["id"]}.json',token=auth)['id']==created_list['id']
assert call(f'/1/{owner_id}/{created_list["id"]}/members.json','POST',{'screen_name':'alice.bsky.social'},auth)['id']==created_list['id']
assert call(f'/1/{owner_id}/{created_list["id"]}/members.json',token=auth)['users'][0]['screen_name']=='alice.bsky.social'
assert call(f'/1/lists/{created_list["id"]}/members.json',token=auth)['users'][0]['screen_name']=='alice.bsky.social'
assert call(f'/1/{owner_id}/{created_list["id"]}/subscribers.json',token=auth)['id']==created_list['id']
assert call('/1/promoted_tweets/search.json',token=auth)=={'promoted_tweets':[]}
assert call('/1/users/suggestions.json',token=auth)==[]
assert call('/1/users/suggestions/actors.json',token=auth)['users'][0]['screen_name']=='alice.bsky.social'
assert call('/1/statuses/followers.json',token=auth)['users'][0]['screen_name']=='alice.bsky.social'
assert call('/1/push_destinations.json',token=auth)==[]
assert call('/1/push_destinations/update.json','POST',{},auth)['ok']
assert call('/1/push_destinations/destroy.json','POST',{},auth)['ok']
assert any(x[1]=='com.atproto.server.refreshSession' for x in calls)
assert call('/1/statuses/user_timeline.json',params={'screen_name':'alice.bsky.social'},token=auth)[0]['text']=='A Bluesky post'
search=call('/1/search/tweets.json',params={'q':'Bluesky'},token=auth)
assert search['statuses'][0]['text']=='A Bluesky post'
assert search['results'][0]['from_user']=='alice.bsky.social' and search['results'][0]['profile_image_url']=='' and search['results'][0]['metadata']['result_type']=='recent'
assert call('/1/users/show.json',params={'screen_name':'alice.bsky.social'},token=auth)['screen_name']=='alice.bsky.social'
assert call('/1/friendships/create.json','POST',{'screen_name':'alice.bsky.social'},auth)['following']
assert call('/oauth/logout','POST',token=auth)['ok']
assert calls[-1][1]=='com.atproto.server.deleteSession' and calls[-1][4]=='jwt-refresh-2'
try: call('/1/account/verify_credentials.json',token=auth)
except api.BridgeError as e: assert e.status==401
else: raise AssertionError('logged-out AT bridge session remained valid')
print('Tailstter response-contract tests passed: XAuth/session refresh, JSON/XML profiles, status/search models, follow graph, DM models, legacy user/list pagination envelopes, and compatibility routes')
PY
