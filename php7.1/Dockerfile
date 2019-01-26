FROM php:7.1-cli

RUN apt-get update && apt-get install -y --no-install-recommends \
    zip \
    unzip \
    git \
    curl \
    mysql-client \
    libmcrypt-dev \
    libmagickwand-dev \
    && docker-php-ext-install bcmath pcntl zip

RUN curl -s https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer

RUN composer about
