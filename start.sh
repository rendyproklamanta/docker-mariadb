#!/bin/bash

source env.sh

docker network create --driver overlay mariadb-network

# Stopping all services
docker stack rm mariadb

# Create dir and set permission
mkdir -p data/db
mkdir -p data/backup
chmod -R 777 data

# Deploy DB
docker stack deploy --compose-file docker-compose.yaml mariadb