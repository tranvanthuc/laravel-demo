#!/usr/bin/env bash
echo 'Test'
sudo docker exec -i web bash
sleep 3
./vendor/bin/phpunit
