#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fcd5e200d6982e7d4e16db6

echo "stackbit-build.sh: finished build"
