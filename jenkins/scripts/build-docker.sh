#!/usr/bin/env sh
composer install
php artisan key:generate
php artisan config:clear
php artisan migrate
yarn install
yarn dev