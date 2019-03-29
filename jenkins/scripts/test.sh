#!/usr/bin/env bash
echo 'Test'
sudo docker exec -i web bash

./vendor/bin/phpunit
