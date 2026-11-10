# Tailstter revival report

## Investigation

The supplied APK is Twitter for Android 2.0.3 (version code 130), package
`com.twitter.android`, minimum SDK 7 (Android 2.1), target SDK 8, and has no
bundled native libraries. Its manifest requests network, contacts/account,
location, sync, and task permissions. Static Smali inspection found Twitter API
v1 endpoints, OAuth 1.0 signing and token storage, plus discontinued photo,
search, push, and analytics endpoints. This confirmed that simply substituting
an API hostname would not create a functional modern service integration.

## Revival results

* **Restored in the bridge:** legacy XAuth login exchanges a Bluesky handle and
  app password for an AT session; profile verification, posting, home timeline,
  author feed, search, and follow/unfollow map to Bluesky XRPC.
* **Restored in the APK patch:** the app name is Tailstter, login labels describe
  Bluesky credentials, API v1 URL roots are redirected to the configurable
  bridge, and a server selector button saves a bridge URL.
* **Partially restored:** legacy JSON fields are mapped to Bluesky profile and
  feed records. Twitter-only response fields and behavior cannot be preserved.
* **Unavailable:** direct messages, media upload, lists, contacts sync, push,
  legacy search filters, signup inside the old app, and some old client routes.
  There is no Twitter data access.

## Service configuration and security

The server listens on `0.0.0.0:6483` by default; the APK's default bridge is
`http://tails1154.com:6483` for Android 2.3 TLS compatibility. HTTP sends Bluesky
app passwords and session tokens in plaintext, so use a revocable app password
on a trusted network. `TAILSTTER_DB` selects the SQLite
session database and `TAILSTTER_BSKY_SERVICE` selects the PDS (default
`https://bsky.social`). The bridge stores session JWTs, not Bluesky passwords.
Users should enter Bluesky app passwords and protect the database and host account.
The user service is deployed and running at `tails1154.com:6483`; its `/health`
endpoint returned OK from the device's network. The address resolves to the
host's private LAN IP in this setup.

## APK and install notes

The original APK is copied to `original/original.apk`; the patched build keeps
package `com.twitter.android`, version 2.0.3, and minimum SDK 7, but has a new
development signature. The rebuilt APK is at `output/revived-signed.apk`.
Install with `adb install -r output/revived-signed.apk` only if the original app
is not installed. A device with the original signed app installed cannot
install over it without uninstalling first, which may erase its app data. APK
changes and build commands are in `scripts/build.sh`.

## Test status

`./scripts/test.sh` exercises the XAuth-to-AT session exchange, token refresh,
and mocked AT translations for profile, post, timeline, author feed, search,
and follow. It does not contact Bluesky. HTTP deployment testing and live
Mocked bridge tests pass for XAuth session creation, refresh, profile, post,
timeline, author feed, search, and follow mapping. The host reached Bluesky's
public AppView (HTTP 200). A live bridge sign-in succeeded and one short test
post was created and deleted. Device login initially failed because the old
Android HTTP reader rejects `application/x-www-form-urlencoded` response bodies;
the bridge now returns the OAuth token body as `text/plain`, which the client
accepts. The patched APK was rebuilt and installed. The user has not yet
confirmed the latest device sign-in. The bridge logout now uses the refresh JWT
and passes mocked coverage; live logout has not been retried. Revoke the
throwaway app password after testing. The XAuth URL is redacted from service
logs.
