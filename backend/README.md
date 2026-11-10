# Tailstter AT Protocol bridge

This service translates the old Twitter Android client's OAuth 1.0/XAuth and
Twitter v1 JSON requests into Bluesky AT Protocol XRPC calls. It does not query,
mirror, or claim to serve Twitter data.

## Configure and run

Python 3.8+; no third-party Python packages are required. The service binds to
`0.0.0.0:6483` by default. DNS for `tails1154.com` must point to the host running
this process. The APK connects to `http://tails1154.com:6483` by default.
The login screen's server selector accepts a different origin; enter it without
an API path.

```sh
TAILSTTER_HOST=0.0.0.0 \
TAILSTTER_PORT=6483 \
TAILSTTER_DB=/var/lib/tailstter/bridge.sqlite3 \
python3 backend/app.py
```

The old Android client needs HTTP because Gingerbread only supports TLS 1.0.
This means Bluesky app passwords and session tokens cross the network in
plaintext. Use a revocable app password and a trusted network. XAuth request
paths are redacted from service logs. Optional TLS can be enabled by setting
both `TAILSTTER_TLS_CERT` and `TAILSTTER_TLS_KEY`.
`GET /health` checks the bridge process.
`TAILSTTER_BSKY_SERVICE` defaults to
`https://bsky.social`; `TAILSTTER_BSKY_PUBLIC` defaults to
`https://public.api.bsky.app`.

## Sign in from the app

Create a Bluesky app password in the Bluesky account settings. Enter the Bluesky
handle and app password in Tailstter's login screen. The bridge exchanges them
with `com.atproto.server.createSession`, then stores the returned session JWTs
under a random opaque token used by the legacy client. It never stores the
Bluesky password. Revoke the app password in Bluesky settings to end future
logins; bridge sessions can be removed by deleting their rows from SQLite.

The bridge currently implements:

| Legacy client route | Bluesky operation |
| --- | --- |
| `/oauth/access_token` | `com.atproto.server.createSession` |
| `GET /1/account/verify_credentials.json` | `app.bsky.actor.getProfile` |
| `POST /1/statuses/update.json` | `com.atproto.repo.createRecord` (`app.bsky.feed.post`) |
| `GET /1/statuses/home_timeline.json` | `app.bsky.feed.getTimeline` |
| `GET /1/statuses/user_timeline.json` | `app.bsky.feed.getAuthorFeed` |
| `GET /1/search/tweets.json` | `app.bsky.feed.searchPosts` |
| `GET /1/users/show.json` | `app.bsky.actor.getProfile` |
| friendship create/destroy | `app.bsky.graph.follow` repository records |

Public profile/feed/search reads use the public AppView endpoint; authenticated
timeline and writes use the configured PDS. Expired sessions are refreshed
through `com.atproto.server.refreshSession`.

Direct messages, media upload, lists, push notifications, legacy Twitter search
filters, and some old client-specific routes have no bridge implementation yet.
Bluesky's character limit and post model differ from the old app's assumptions.
The bridge maps the common post/profile fields, but cannot reproduce Twitter-only
semantics. Other PDS hosts can be selected with `TAILSTTER_BSKY_SERVICE` when
they accept this session flow.
