#!/usr/bin/env sh

cp .env.example .env
sudo docker-compose up --build -d
# sudo chmod -R 777 storage vendor node_modules .env
sudo rm -rf composer.lock

# in docker container web

sudo docker exec -i laravel_demo_web /jenkins/scripts/build-docker.sh
