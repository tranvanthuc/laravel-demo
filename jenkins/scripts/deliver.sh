#!/usr/bin/env bash
echo 'Delivery'

set -x
echo $! > .pidfile
set +x

php artisan serve --port=9090
