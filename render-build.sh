# 

#!/usr/bin/env bash
set -o errexit

npm install

# Install Chrome for Puppeteer
npx puppeteer browsers install chrome