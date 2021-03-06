#!/bin/bash

set -uex

cd "$(dirname "$0")/.."

npm install
npm run generate-parser
npm format:check
npm run build
npm test

npm version patch
git push
git push --tags
npm publish
