#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up -d
sudo docker exec -it web bash

# in docker container web
php artisan config:cache
