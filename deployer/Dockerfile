FROM php:5.4
MAINTAINER "Sascha Marcel Schmidt" <docker@saschaschmidt.net>

RUN apt-get update && apt-get install git libmcrypt-dev libgmp-dev libssh2-1-dev zlib1g-dev -y --no-install-recommends && rm -r /var/lib/apt/lists/*
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN cd /tmp/ && \
    curl -O https://pecl.php.net/get/ssh2-0.12.tgz && \
    tar zxvf ssh2-0.12.tgz && \
    mv ssh2-0.12 /usr/src/php/ext/ssh2

RUN ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h

RUN docker-php-ext-install zip mcrypt gmp ssh2

RUN touch /usr/local/etc/php/conf.d/date.ini &&\
    echo 'date.timezone = "Europe/Berlin"' > /usr/local/etc/php/conf.d/date.ini

RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN composer require phpseclib/phpseclib:2.0.*@dev &&\
    composer require deployer/deployer:2.0.5

RUN mkdir -p /var/www/html/configuration
WORKDIR /var/www/html/configuration
CMD ["php", "/var/www/html/vendor/bin/dep", "deploy"]
