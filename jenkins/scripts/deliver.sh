#!/usr/bin/env bash
echo 'Delivery'

echo $! > .pidfile
set +x

php artisan serve --port=9090
