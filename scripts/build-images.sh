#!/usr/bin/env bash

# Build the image "sepiphylabs/laravel_testing_composer"
docker build ./src/composer -t sepiphylabs/laravel_testing_composer

# Build the image "sepiphylabs/laravel_testing_php7.1"
docker build ./src/php7.1 -t sepiphylabs/laravel_testing_php7.1

# Build the image "sepiphylabs/laravel_testing_php7.2"
docker build ./src/php7.2 -t sepiphylabs/laravel_testing_php7.2

# Build the image "sepiphylabs/laravel_testing_php7.3"
docker build ./src/php7.3 -t sepiphylabs/laravel_testing_php7.3
