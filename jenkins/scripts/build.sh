#!/usr/bin/env sh

echo 'Build'
rm -rf yarn.lock
npm install
npm run dev

rm -rf composer.lock
composer install
composer dump

#! php artisan
cp .env.example .env
php artisan key:generate
php artisan config:cache
