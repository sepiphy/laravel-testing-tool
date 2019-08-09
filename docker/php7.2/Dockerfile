FROM php:7.2

RUN apt-get update

RUN apt-get update && apt-get install -y --no-install-recommends \
    git zip unzip curl \
    libmcrypt-dev \
    libmemcached-dev \
    libmagickwand-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && docker-php-ext-install -j$(nproc) bcmath gd iconv pcntl pdo_mysql zip \
    && pecl install memcached redis \
    && docker-php-ext-enable memcached redis \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer

WORKDIR /app

ARG CODE_GID=1000
ARG CODE_UID=1000

RUN set -xe; \
    groupadd -g ${CODE_GID} php && \
    useradd -u ${CODE_UID} -g php -m php && \
    usermod -p "*" php -s /bin/bash

USER php:php
