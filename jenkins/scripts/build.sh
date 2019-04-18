#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up --build -d
# sudo chmod -R 777 storage vendor node_modules .env
sudo rm -rf composer.lock

# in docker container web

sudo docker-compose exec web composer install
sudo docker-compose exec web php artisan key:generate
sudo docker-compose exec web php artisan config:clear
sudo docker-compose exec web php artisan migrate
sudo docker-compose exec web yarn install
sudo docker-compose exec web yarn dev
