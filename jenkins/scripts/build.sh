#!/usr/bin/env sh

cp .env.example .env
 docker-compose up --build -d
sudo chmod -R 777 storage vendor node_modules .env
 rm -rf composer.lock
 docker exec -it laravel_demo_web bash

# in docker container web

composer install
php artisan key:generate
php artisan config:clear
php artisan migrate
yarn install
yarn dev
