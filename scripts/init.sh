#!/bin/bash

set -e

if [ -z "$1" ]; then
  echo "Missing arguments: Please specify a target env (dev, stage, prod)..."
  exit 1
fi

echo "Initializing target: ${1} ..."

./scripts/copy-env.sh

if [ "$1" = "dev" ]; then
  ./scripts/set-apache-uid.sh
  ./scripts/composer-install.sh
  ./scripts/npm-install.sh
fi

docker-compose -f docker-compose.yml -f docker-compose.$1.yml up --build -d
