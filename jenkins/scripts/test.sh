#!/usr/bin/env bash
echo 'Test'
docker exec -i web bash

./vendor/bin/phpunit
