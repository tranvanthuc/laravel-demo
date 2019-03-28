#!/usr/bin/env sh

echo 'Build'
sudo npm i -g yarn
yarn install
yarn dev

rm -rf composer.lock
composer install
composer dump

#! php artisan
cp .env.example .env
php artisan key:generate
php artisan config:cache
