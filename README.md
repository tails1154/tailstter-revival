# Tailstter

Tailstter revives the supplied legacy Twitter Android client by redirecting its
Twitter v1 API calls to a bridge that reads and writes Bluesky through AT Protocol.
No Twitter data is requested or proxied.

Start at [backend/README.md](backend/README.md) for server setup. The APK is
patched by [scripts/build.sh](scripts/build.sh); it defaults to
`http://tails1154.com:6483`. The login screen has a server selector and accepts
a Bluesky handle plus app password.

Run `./scripts/test.sh` for offline bridge tests with mocked AT responses. Build
with `./scripts/build.sh` and Android SDK `apksigner`; private development
signing material stays in the ignored `signing/` directory.
