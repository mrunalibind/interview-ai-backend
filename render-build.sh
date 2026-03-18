# 

#!/usr/bin/env bash
set -o errexit

npm install

# Install Chrome inside the project directory
PUPPETEER_CACHE_DIR=/opt/render/project/src/.cache/puppeteer
mkdir -p $PUPPETEER_CACHE_DIR

PUPPETEER_CACHE_DIR=$PUPPETEER_CACHE_DIR npx puppeteer browsers install chrome