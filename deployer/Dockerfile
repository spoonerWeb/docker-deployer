FROM php:5.4-fpm
MAINTAINER "Sascha Marcel Schmidt" <docker@saschaschmidt.net>

RUN apt-get update && apt-get install git libmcrypt-dev libgmp-dev libssh2-1-dev zlib1g-dev -y --no-install-recommends && rm -r /var/lib/apt/lists/*
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN cd /tmp/ && \
    curl -O https://pecl.php.net/get/ssh2-0.12.tgz && \
    tar zxvf ssh2-0.12.tgz && \
    mv ssh2-0.12 /usr/src/php/ext/ssh2

RUN ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h

RUN docker-php-ext-install zip mcrypt gmp ssh2

RUN composer require phpseclib/phpseclib:2.0.*@dev &&\
    composer require deployer/deployer:2.0.5 &&\
    composer require robmorgan/phinx:0.4.x
