#!/bin/bash

set -e

cd ~/projects/docker-lab

echo "==> Pull latest Docker images"
docker compose -f docker-compose.prod.yml pull

echo "==> Restart production containers"
docker compose -f docker-compose.prod.yml up -d

echo "==> Show production status"
docker compose -f docker-compose.prod.yml ps

echo "==> Deployment completed"
