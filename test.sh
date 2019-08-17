#!/usr/bin/env bash

docker-compose up --build --detach

docker-compose exec php composer install

docker-compose exec php ./vendor/bin/phpunit
