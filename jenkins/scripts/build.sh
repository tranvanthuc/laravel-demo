#!/usr/bin/env sh

echo 'Build'
sudo npm install -g yarn
yarn install
yarn dev

composer install
composer dump

#! php artisan
sudo cp .env.example .env
php artisan key:generate
php artisan config:cache
