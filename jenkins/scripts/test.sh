#!/usr/bin/env bash
echo 'Test'
sudo docker-compose exec web ./vendor/bin/phpunit
