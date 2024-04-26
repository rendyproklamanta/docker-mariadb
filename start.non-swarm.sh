#!/bin/bash

# Create dir and set permission
mkdir -p data/db
mkdir -p data/backup
chmod -R 777 data

# Deploy DB
docker compose -f docker-compose.yaml up -d --force-recreate