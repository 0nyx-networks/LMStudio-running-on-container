#!/bin/bash

set -Eeuo pipefail

# LMStudioのコンテナをビルド
podman build -t lmstudio:latest \
  --force-rm \
  ./services/lmstudio
