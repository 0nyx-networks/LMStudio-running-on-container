#!/bin/bash

set -Eeuo pipefail

mkdir -p ${WORKSPACE}/lmstudio/models

rm -rf /root/.lmstudio/models 2>/dev/null || true
ln -s ${WORKSPACE}/lmstudio/models /root/.lmstudio/models

lms server start --bind 0.0.0.0 --port ${LISTEN_PORT} --cors
lms server status
lms log stream
