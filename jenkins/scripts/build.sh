#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up --build -d
# sudo chmod -R 777 storage vendor node_modules .env
sudo rm -rf composer.lock

# in docker container web
sudo docker-compose exec -T app php artisan config:cache
