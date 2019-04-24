#!/usr/bin/env bash
echo 'Unit test'
docker-compose exec -T app ./vendor/bin/phpunit