#!/usr/bin/env bash

docker network create --driver bridge laravel_testing_network > /dev/null 2>&1

# A redis container is required to test some components including Cache, Queue and Redis.
docker container start laravel_testing_redis > /dev/null 2>&1 || docker run -d --name laravel_testing_redis --network laravel_testing_network redis

# A memcached container is required to test component Cache.
docker container start laravel_testing_memcached > /dev/null 2>&1 || docker run -d --name laravel_testing_memcached --network laravel_testing_network memcached

docker container start laravel_testing_mysql > /dev/null 2>&1 || docker run -d --name laravel_testing_mysql --network laravel_testing_network -e MYSQL_ROOT_PASSWORD=secret mysql
