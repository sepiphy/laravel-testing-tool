FROM php:7.2

RUN apt-get update

RUN apt-get update && apt-get install -y --no-install-recommends \
    git zip unzip curl locales \
    unixodbc \
    unixodbc-dev \
    libmcrypt-dev \
    libmemcached-dev \
    libmagickwand-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libjpeg-dev \
    zlib1g-dev \
    && docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) bcmath gd iconv pcntl pdo_mysql pdo_odbc zip \
    && pecl install imagick memcached redis \
    && docker-php-ext-enable imagick memcached redis \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD php.ini /usr/local/etc/php/php.ini

WORKDIR /app

ARG CODE_GID=1000
ARG CODE_UID=1000

RUN set -xe; \
    groupadd -g ${CODE_GID} php && \
    useradd -u ${CODE_UID} -g php -m php && \
    usermod -p "*" php -s /bin/bash

USER php:php
