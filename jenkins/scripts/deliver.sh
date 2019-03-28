#!/usr/bin/env bash
echo 'Delivery'

set -x
php artisan serve --port=9090 &
sleep 1
echo $! > .pidfile
set +x
