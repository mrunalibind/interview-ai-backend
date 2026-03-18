# !/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
npm install

# Uncomment this line if you need to build your project
# npm run build
# Ensure the Puppeteer cache directory exists
PUPPETEER_CACHE_DIR=/opt/render/.cache/puppeteer
mkdir -p $PUPPETEER_CACHE_DIR

# Install Puppeteer and download Chrome
npx puppeteer browsers install chrome

#Ensure destination directory exists 
mkdir -p /opt/render/project/src/.cache/puppeteer

cp -R $PUPPETEER_CACHE_DIR/chrome /opt/render/project/src/.cache/puppeteer/ || true