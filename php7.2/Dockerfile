FROM php:7.2-cli

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    zip \
    unzip \
    git \
    curl \
    mysql-client \
    libmcrypt-dev \
    libmemcached-dev \
    libmagickwand-dev

RUN docker-php-ext-install -j$(nproc) bcmath pcntl zip

RUN pecl install memcached redis

RUN docker-php-ext-enable memcached redis

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN curl -s https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer
