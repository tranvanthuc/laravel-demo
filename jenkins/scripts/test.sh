#!/usr/bin/env bash
echo 'Unit test'
sudo docker-compose exec -T app ./vendor/bin/phpunit