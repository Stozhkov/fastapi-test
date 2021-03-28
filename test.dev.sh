#!/usr/bin/env bash

echo "Run tests"
docker-compose -f docker-compose.dev.yaml exec app-dev sh -c "cd /usr/src/app && pytest -v && exit"