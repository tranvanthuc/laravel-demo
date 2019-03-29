#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up -d
sudo chmod -R 777 storage
composer install
sudo docker exec -i web bash

# in docker container web
php artisan key:generate
php artisan config:cache
yarn install
yarn dev
