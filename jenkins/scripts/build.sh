#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up -d
sudo chmod -R 777 storage vendor node_modules
composer install
sudo docker exec -i web bash

# in docker container web
php artisan key:generate
cat .env
php artisan cache:clear
php artisan config:clear
php artisan config:cache
yarn install
yarn dev
