# Tailstter revival report

## Original application and target

The supplied APK is Twitter for Android 2.0.3 (version code 130), package
`com.twitter.android`, minimum SDK 7 (Android 2.1), target SDK 8, with no native
libraries. The client uses Dalvik-compatible bytecode. Its manifest includes
network, contacts/account, location, sync, and task permissions. The rebuilt APK
retains the package/version and minimum SDK; it is signed with a Tailstter
development certificate, not the original developer's certificate.

Static compatibility targets are Android 2.2 (API 8), 2.3.x (API 9/10), 4.0
(API 14), and 4.4 (API 19). Runtime verification on those Android releases is
not complete. The old client uses HTTP to reach the bridge because Gingerbread
cannot reliably negotiate current Bluesky TLS; the server makes TLS upstream
requests to Bluesky.

## Investigation and modifications

The APK's Smali contains Twitter API v1 calls, an OAuth 1.0/XAuth login flow,
legacy search and signup hosts, C2DM push registration, analytics, map lookups,
and discontinued photo-host integrations. API hostname replacement alone was
not enough: search bypassed the API base and called the retired
`search.twitter.com` host directly. The patched client routes search, the
mobile signup path, and analytics to Tailstter; normal Twitter API roots and
the decider request also use the selected Tailstter server. Login-screen labels
and the server selector identify the replacement service.

## Functionality

* **Restored:** XAuth-to-Bluesky session exchange and refresh/logout; profile
  verification/update; home/friends timeline; author feed; search; mentions;
  create/delete post; repost and favorite operations; actor search/lookup,
  followers, follow/unfollow, and block operations; saved searches; and local
  lists with members and member feeds.
* **Restored through official Bluesky Chat APIs:** DM inbox/sent reads, send,
  and delete-for-self calls use the Chat proxy header. Tailstter does not store
  DM content. Bluesky DMs exist, so there is no temporary local message store.
* **Compatibility responses:** trends and geo lookup return empty results;
  promoted-content and push-destination requests are acknowledged without
  storing or forwarding them; scribe analytics are discarded; the old URL
  shortener returns the original URL unchanged. The retired in-app signup API
  returns HTTP 410 with instructions to create a Bluesky account first.
* **Still unavailable or different:** photo uploads and discontinued photo
  providers have no replacement integration; Twitter-specific trends, place
  search, list subscriptions/subscribers, and some profile fields have no
  direct Bluesky equivalent. Local lists are private SQLite data rather than
  Bluesky-native lists. Search and post/profile data use Bluesky and are not
  Twitter data. The app's old 300-character composer and other Twitter-era
  assumptions do not override Bluesky's current account/schema limits.

## Client response contract audit

The decompiled `db.smali` parser was checked against each bridge response
family:

| Client parser | Expected JSON shape | Bridge route examples |
| --- | --- | --- |
| Profile (`db.a(Lbl;J)`) | User object with `id`, `name`, `screen_name`, `profile_image_url`, `description`, `url`, `location`, `created_at`, counts, and viewer flags | verify credentials, user show, friendship actions |
| Status (`db.b`) | Status object with `created_at`, `source`, `text`, `id`, reply/repost/favorite fields, nested `user`, and `entities` | show, create, favorite, repost |
| Timeline (`db.c`) | Raw array of status objects | home, user, favorites, mentions, list statuses |
| Paged users (`db.a(Lbl;)`) | `{"users":[...],"next_cursor":"..."}` | friends, followers, list members, actor suggestions |
| Paged lists (`db.a(Lbl;I)`) | `{"lists":[...],"next_cursor":"..."}`; each list has a nested `user` | owner lists, memberships, subscriptions |
| Single/list-array (`db.b(Lbl;I)`) | List object with `name`, `full_name`, `description`, `mode`, counts, `id`, and `user`; list index is a raw array | list lookup/create and `/lists/list.json` |
| Direct messages (`db.e`, `db.f`) | Raw array of messages with `created_at`, `text`, `id`, nested `sender`, `recipient`, and `entities` | inbox, sent, new, destroy |
| Search (`db.g`, `db.t`) | Root `results` array; entries have `created_at`, `source`, `text`, root `profile_image_url`, `to_user`, `from_user`, `from_user_id`, `id`, and `metadata.result_type` | search tweets |
| Other parsed responses | Trends `{as_of,trends}`, rate values, `{short_url_length}`, friendship `{relationship:{source:{following,followed_by}}}`, reverse geo `{result:{places}}`, promoted `{promoted_tweets}`, saved-search array, suggestion category array (`name`,`slug`), suggestion users wrapper, IDs array, and scribe config | compatibility endpoints |

The bridge returns these shapes; notably, friends and followers are user-page
envelopes, not post arrays, and list owners receive a `lists` envelope rather
than a bare array.

Mapped profile objects include the fields consumed by the legacy profile
parser, including a valid Twitter-format `created_at`; post objects include
the status fields and nested `user` and `entities`; DM objects include nested
`sender` and `recipient`; list objects include the nested owner `user`. Search
results include `from_user`, `from_user_id`, `profile_image_url`, and
`metadata.result_type`, which this app reads instead of the `statuses` array.
These contracts are covered by mocked bridge response tests and were audited
against the original Smali parser field names.

## Backend configuration and security

The bridge is configured for `http://tails1154.com:6483`; the server binds to
`0.0.0.0:6483`, uses SQLite, and proxies authenticated requests to
`https://bsky.social`, with public reads through
`https://public.api.bsky.app`. It is deployed as a user systemd service on the
remote host. Deployment verification returned HTTP 200 from `/health` after
the latest backend changes.

The bridge does not retain Bluesky app passwords. It stores the returned
session JWTs and opaque legacy sessions, so protect the SQLite database and
revoke app passwords that were used for testing. The phone-to-server connection
is plaintext HTTP; credentials and session tokens can be observed on that
network path. Use only a trusted network or configure optional bridge TLS on
Android versions that support it. Analytics request bodies are discarded and
not stored. No credentials or development signing keys belong in the public
repository.

## APK and installation

`scripts/build.sh` uses Apktool, substitutes the configured bridge origin,
rebuilds the APK, and signs with a development key held in the ignored
`signing/` directory. The output is `output/revived-signed.apk`. Because its
signature differs from the original developer's, Android cannot install it as
an in-place update over the original signed package; uninstalling first may
erase local app data. The rebuilt APK is installed on the connected Android
2.3.7/API 10 device. Its package remains `com.twitter.android` version 2.0.3,
target SDK 8. The installed APK hash matches the local artifact. The captured
phone log contains earlier `db.a` list-sync crashes from before the corrected
list response envelopes; after the later launch, the app process remained alive
and the captured log contained no newer fatal exception. A user-driven timeline
refresh after the final route fix has not been observed, so full feature runtime
verification remains incomplete.

## Verification

`python3 -m py_compile backend/app.py` and `./scripts/test.sh` pass. The test
suite mocks AT responses and covers authentication/session refresh, profile
JSON/XML, post create/delete, timelines, author feed, search, follows, DMs,
saved searches, local list routes (including both URL shapes), signup,
analytics, and push compatibility. The current APK SHA-256 is
`c6a450309b63bf034053b7fa8fc5edfa84f4fea0bd5906cd5bae9795bd237eae`; its
installed package reports version 2.0.3 and target SDK 8. The remote bridge
health check returned HTTP 200. Mocked tests and health checks do not prove
every live Bluesky feature or every Gingerbread runtime path.
