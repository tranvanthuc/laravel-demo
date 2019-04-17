#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up --build -d
sudo chmod -R 777 storage node_modules .env
sudo docker exec -i web bash

# in docker container web
rm -rf composer.lock
composer install
php artisan key:generate
php artisan config:clear
php artisan migrate
yarn install
yarn dev
