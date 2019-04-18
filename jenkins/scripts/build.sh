#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up --build -d
sudo chown -R www-data:www-data storage bootstrap public .env
sudo rm -rf composer.lock

# in docker container web
sudo docker-compose exec -T app php artisan config:cache
