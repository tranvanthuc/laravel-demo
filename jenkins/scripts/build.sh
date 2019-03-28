#!/usr/bin/env sh

echo 'Build'
npm install -g yarn
yarn install
yarn dev

composer install
composer dump

#! php artisan
php artisan key:generate
php artisan config:cache
