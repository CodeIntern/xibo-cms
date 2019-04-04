#!/bin/bash

set -e

echo "----------------------------------------------------"

echo "Shutting down containers..."
docker-compose down

echo "Removing volumes..."
sudo rm -rf ./containers ./node_modules ./vendor ./library ./cache

echo "----------------------------------------------------"
echo "All cleaned."
echo ""