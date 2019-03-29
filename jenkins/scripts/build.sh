#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up -d
sudo chmod -R 777 storage vendor node_modules .env
composer install
sudo docker-compose exec web php artisan key:generate
sudo docker exec -i web bash
sleep 3
# in docker container web
php artisan config:clear
yarn install
yarn dev
