#!/bin/bash

# This will give Apache the same permissions as the mounted folder
# outside the container, for development purposes.

set -e

echo "Assiging Apache UID..."
sed -e "s|APACHE_USER_ID=.*|APACHE_USER_ID=$(id -u)|g" .env
echo ""
