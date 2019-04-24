#!/usr/bin/env sh

test -e .env || cp .env.example .env
docker-compose up --build -d

# in docker container web
docker-compose exec -T app composer install
docker-compose exec -T app php artisan key:generate
docker-compose exec -T app php artisan config:cache
docker-compose exec -T app php artisan migrate
docker-compose exec -T app yarn install
docker-compose exec -T app yarn dev




