#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up --build -d
sudo chmod -R 777 storage vendor node_modules .env
sudo rm -rf composer.lock
sudo docker exec -i pipeline-docker_develop_web_1 bash

# in docker container web

composer install
php artisan key:generate
php artisan config:clear
php artisan migrate
yarn install
yarn dev
