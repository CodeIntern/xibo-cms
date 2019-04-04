#!/bin/bash

# This will give Apache the same permissions as the mounted folder
# outside the container, for development purposes.

set -e

echo "Assiging Apache UID..."

currentUid=$(id -u)
echo "Current UID: ${currentUid}"

sed -i .env -e "s|APACHE_USER_ID=.*|APACHE_USER_ID=$currentUid|g" .env

echo ""
