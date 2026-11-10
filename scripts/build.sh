#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
FRAME_PATH=${APKTOOL_FRAME_PATH:-/tmp/apktool-framework}
API_BASE=${TAILSTTER_API_BASE:-http://tails1154.com:6483}
KEY_DIR="$ROOT/signing"
KEY="$KEY_DIR/tailstter-dev.key.pem"
CERT="$KEY_DIR/tailstter-dev.crt.pem"
KEYSTORE="$KEY_DIR/tailstter-dev.p12"
KEYSTORE_PASS=${TAILSTTER_KEYSTORE_PASS:-tailstter-dev}
FINAL="$ROOT/output/revived-signed.apk"
TMP=$(mktemp -d)
trap 'python3 -c "from pathlib import Path; import shutil; shutil.rmtree(Path(\"$TMP\"),ignore_errors=True)"' EXIT INT TERM
BUILD_SRC="$TMP/decoded"
UNSIGNED="$TMP/tailstter-unsigned.apk"
SIGNED="$TMP/revived-signed.apk"
mkdir -p "$ROOT/output" "$KEY_DIR"
case "$API_BASE" in https://*|http://*) ;; *) echo "TAILSTTER_API_BASE must start with http:// or https://" >&2; exit 2;; esac
python3 - "$ROOT/decoded" "$BUILD_SRC" <<'PY'
import shutil,sys
shutil.copytree(sys.argv[1],sys.argv[2])
PY
TAILSTTER_API_BASE="$API_BASE" python3 - "$BUILD_SRC" <<'PY'
import os,re,sys
from pathlib import Path
root=Path(sys.argv[1]); base=os.environ['TAILSTTER_API_BASE'].rstrip('/')
for path in root.glob('smali/**/*.smali'):
    src=path.read_text(encoding='utf-8')
    out=[]
    for line in src.splitlines():
        m=re.match(r'^(\s*)const-string(?:/jumbo)? (v\d+), "https://api\.twitter\.com/1"$',line)
        if m:
            ind,reg=m.groups(); out.extend([ind+'invoke-static {}, Lcom/twitter/android/TailstterApi;->v1()Ljava/lang/String;',ind+'move-result-object '+reg]); continue
        m=re.match(r'^(\s*)const-string(?:/jumbo)? (v\d+), "https://api\.twitter\.com"$',line)
        if m:
            ind,reg=m.groups(); out.extend([ind+'invoke-static {}, Lcom/twitter/android/TailstterApi;->root()Ljava/lang/String;',ind+'move-result-object '+reg]); continue
        m=re.match(r'^(\s*)const-string(?:/jumbo)? (v\d+), "https://api\.twitter\.com/1/account/verify_credentials\.(json|xml)"$',line)
        if m:
            ind,reg,kind=m.groups(); method='verifyJson' if kind=='json' else 'verifyXml'; out.extend([ind+'invoke-static {}, Lcom/twitter/android/TailstterApi;->'+method+'()Ljava/lang/String;',ind+'move-result-object '+reg]); continue
        m=re.match(r'^(\s*)const-string(?:/jumbo)? (v\d+), "http://search\.twitter\.com/search\.json"$',line)
        if m:
            ind,reg=m.groups(); out.extend([ind+'invoke-static {}, Lcom/twitter/android/TailstterApi;->search()Ljava/lang/String;',ind+'move-result-object '+reg]); continue
        out.append(line)
    updated='\n'.join(out)+'\n'
    updated=updated.replace('TAILSTTER_DEFAULT_API_BASE',base)
    if updated!=src: path.write_text(updated,encoding='utf-8')
PY
apktool b -f -p "$FRAME_PATH" "$BUILD_SRC" -o "$UNSIGNED"
if [ ! -s "$KEY" ] || [ ! -s "$CERT" ]; then
  openssl req -x509 -newkey rsa:2048 -sha256 -nodes -days 3650 -subj "/CN=Tailstter Development Signing/" -keyout "$KEY" -out "$CERT" >/dev/null 2>&1
  chmod 600 "$KEY"
fi
if [ ! -s "$KEYSTORE" ]; then
  openssl pkcs12 -export -inkey "$KEY" -in "$CERT" -out "$KEYSTORE" -name tailstter-dev -passout "pass:$KEYSTORE_PASS"
  chmod 600 "$KEYSTORE"
fi
if command -v apksigner >/dev/null 2>&1; then
  apksigner sign --ks "$KEYSTORE" --ks-pass "pass:$KEYSTORE_PASS" --ks-key-alias tailstter-dev --min-sdk-version 7 --v1-signing-enabled true --v2-signing-enabled true --out "$SIGNED" "$UNSIGNED"
  apksigner verify --verbose --print-certs "$SIGNED"
elif [ -n "${APKSIGNER_JAR:-}" ] && [ -f "$APKSIGNER_JAR" ]; then
  java -jar "$APKSIGNER_JAR" sign --ks "$KEYSTORE" --ks-pass "pass:$KEYSTORE_PASS" --ks-key-alias tailstter-dev --min-sdk-version 7 --v1-signing-enabled true --v2-signing-enabled true --out "$SIGNED" "$UNSIGNED"
  java -jar "$APKSIGNER_JAR" verify --verbose --print-certs "$SIGNED"
else
  echo "apksigner is required (Android SDK build-tools); set APKSIGNER_JAR to apksigner.jar if needed." >&2
  exit 1
fi
cp "$SIGNED" "$FINAL"
aapt dump badging "$FINAL" | head -20
unzip -t "$FINAL" | tail -1
echo "Built $FINAL"
