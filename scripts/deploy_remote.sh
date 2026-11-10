#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
HOST=${TAILSTTER_SSH_HOST:-tails1154@tails1154.com}
PORT=${TAILSTTER_SSH_PORT:-1699}
KNOWN=${TAILSTTER_SSH_KNOWN_HOSTS:-/tmp/tailstter_known_hosts}
REMOTE_DIR=.local/share/tailstter
SSH="ssh -F /dev/null -p $PORT -o BatchMode=yes -o StrictHostKeyChecking=yes -o UserKnownHostsFile=$KNOWN"
SCP="scp -F /dev/null -P $PORT -o BatchMode=yes -o StrictHostKeyChecking=yes -o UserKnownHostsFile=$KNOWN"
$SSH "$HOST" "mkdir -p '$REMOTE_DIR' .config/systemd/user"
$SCP "$ROOT/backend/app.py" "$HOST:$REMOTE_DIR/app.py"
$SCP "$ROOT/backend/README.md" "$HOST:$REMOTE_DIR/README.md"
$SCP "$ROOT/deploy/tailstter.service" "$HOST:.config/systemd/user/tailstter.service"
$SSH "$HOST" "systemctl --user daemon-reload && systemctl --user enable --now tailstter.service && systemctl --user restart tailstter.service && sleep 1 && /usr/bin/python3 -c 'from urllib.request import urlopen; print(urlopen(\"http://127.0.0.1:6483/health\", timeout=5).read().decode())'"
