# Tailstter AT Protocol bridge

This service translates the legacy Twitter Android client's XAuth requests and
Twitter API v1 routes to Bluesky's AT Protocol. It does not request, mirror, or
claim to provide Twitter data.

## Run it

The server uses only Python's standard library and SQLite. Python 3.8 or newer
is required. By default it listens on `0.0.0.0:6483` and stores its database in
`tailstter.sqlite3` in the current directory.

```sh
TAILSTTER_HOST=0.0.0.0 \
TAILSTTER_PORT=6483 \
TAILSTTER_DB=/var/lib/tailstter/bridge.sqlite3 \
python3 backend/app.py
```

The APK defaults to `http://tails1154.com:6483`; DNS for that name must point to
this host. The in-app server selector accepts another origin (without `/1`).
The app targets Android 2.1 and older Android releases may not negotiate the
current Bluesky TLS configuration. The bridge therefore makes its upstream
HTTPS requests; the phone-to-bridge HTTP connection is plaintext. Do not use a
reused account password, and restrict the network path. Optional bridge TLS is
available by setting both `TAILSTTER_TLS_CERT` and `TAILSTTER_TLS_KEY`.

`GET /health` reports bridge health. `TAILSTTER_BSKY_SERVICE` selects the PDS
(default `https://bsky.social`); public reads use
`TAILSTTER_BSKY_PUBLIC` (default `https://public.api.bsky.app`).

## Accounts and supported behavior

Create a Bluesky app password in account settings and sign in with the handle
and app password. The bridge sends those credentials to
`com.atproto.server.createSession`, stores the returned AT access and refresh
JWTs with an opaque legacy token in SQLite, and never stores the app password.
Refresh, logout, and session expiry use the AT session APIs. Account creation
must happen through Bluesky; the retired in-app signup URL returns an explicit
`410` response.

The bridge implements these client route groups:

| Legacy routes | Behavior |
| --- | --- |
| `/oauth/access_token`, `/oauth/logout` | Bluesky session create/delete and refresh |
| account verify, settings, rate limit, profile update | Profile fields map to AT profile records; rate-limit/settings values are compatibility defaults |
| status home/friends timeline, user timeline, mentions, show, search | AT feed, actor, post-thread, and post-search calls |
| status create, delete, retweet; favorite create/destroy/read | AT post/repost/like records; status URI mappings are cached locally |
| user show/search/lookup/suggestions/followers | AT actor and graph reads |
| friendship show/create/create-all/destroy; block list/create/destroy | AT follow and block records |
| direct-message list/sent/new/destroy | Official Bluesky Chat XRPC through the `did:web:api.bsky.chat#bsky_chat` proxy; message bodies are not stored by Tailstter |
| local list CRUD, members, and member feeds | SQLite compatibility implementation; these are private to the Tailstter account and are not Bluesky-native lists |
| saved-search CRUD | SQLite, scoped to the Tailstter session |
| trends, geo lookup, promoted content, legacy push destinations, scribe | Empty/no-op compatibility responses; Bluesky does not provide equivalent Twitter services |
| legacy URL shortening | Returns the supplied URL unchanged |

The Twitter app's post composer has a 300-character compatibility check. AT
posts still follow Bluesky's own schema and account limits. Twitter-only fields,
quote/reply semantics, trending topics, places, and subscriber lists cannot be
recreated as Bluesky features. Legacy photo hosts and media upload are not
bridged; signup also remains outside the app.

Run `../scripts/test.sh` from the repository root to exercise mocked AT flows
and route compatibility. No external Bluesky account is needed for those
tests. `../scripts/deploy_remote.sh` installs the service as a user systemd
unit when run from the configured deployment host.
