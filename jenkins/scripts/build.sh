#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up --build -d
# sudo chown -R jenkins:jenkins storage bootstrap public .env
sudo rm -rf composer.lock

# in docker container web
sudo docker-compose exec -T app composer install
sudo docker-compose exec -T app php artisan config:cache
