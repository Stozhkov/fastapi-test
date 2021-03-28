#!/usr/bin/env bash

echo "Init data in DB"
docker-compose -f docker-compose.dev.yaml exec app-dev sh -c "cd /usr/src/app && python init_data.py"