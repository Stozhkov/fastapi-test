#!/usr/bin/env bash

# Clean app folder
rm -rf service-dev/app/

# Clone rep to app directory
git clone https://github.com/Stozhkov/fastapi_search_employees.git service-dev/app/

# Remove git dir and git ignore file
rm -rf service-dev/app/.git/

docker-compose -f docker-compose.dev.yaml build
