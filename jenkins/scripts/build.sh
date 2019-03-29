#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up -d
sudo chmod -R 777 storage
sudo docker exec -it web bash

# in docker container web
php artisan key:generate
php artisan config:cache
composer install
yarn install
yarn dev
