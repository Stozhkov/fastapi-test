#!/usr/bin/env bash

# Clean app folder
rm -rf service/app/

# Clone rep to app directory
git clone https://github.com/Stozhkov/fastapi_search_employees.git service/app/

# Remove git dir and git ignore file
rm -rf service/app/.git/

docker-compose -f docker-compose.prod.yaml build
