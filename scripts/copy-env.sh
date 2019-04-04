#!/bin/bash

set -e

echo "Copying env file if there is none..."
if [ ! -e .env ]; then
  cp .env.example .env;
fi
