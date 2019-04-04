#!/bin/bash

set -e

echo "Installing NPM dependencies..."
docker run --rm --volume $PWD:/app --volume ~/.npm:/root/.npm -w /app node:latest sh -c "npm install webpack -g; npm install; npm run build;"