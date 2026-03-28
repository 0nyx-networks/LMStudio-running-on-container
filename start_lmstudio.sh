#!/bin/bash

set -Eeuo pipefail

mkdir -p ./models

# LMStudioコンテナを実行
# WSL2起動時に実行すればOK
podman run -d \
  --replace \
  --name lmstudio \
  -p 1234:1234 \
  --volume "$(pwd)/models:/workspace/lmstudio/models" \
  localhost/lmstudio:latest
