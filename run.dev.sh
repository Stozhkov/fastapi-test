#!/usr/bin/env bash

echo "Up containers"
docker-compose -f docker-compose.dev.yaml up -d

echo "Import test data in DB"
docker-compose -f docker-compose.dev.yaml exec app-dev sh -c "cd /usr/src/app && python import_test_data.py"
