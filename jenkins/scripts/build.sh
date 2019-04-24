#!/usr/bin/env sh

test -e .env || cp .env.example .env
sudo docker-compose up --build -d

# in docker container web
sudo docker-compose exec -T app composer install
sudo docker-compose exec -T app php artisan key:generate
sudo docker-compose exec -T app php artisan config:cache
sudo docker-compose exec -T app php artisan migrate
sudo docker-compose exec -T app yarn install
sudo docker-compose exec -T app yarn dev




