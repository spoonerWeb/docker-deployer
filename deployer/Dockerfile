FROM php:5.4
MAINTAINER "Sascha Marcel Schmidt" <docker@saschaschmidt.net>

RUN curl -L --url http://deployer.org/deployer.phar --out /usr/local/bin/dep && chmod +x /usr/local/bin/dep
RUN mkdir -p /var/www/html/configuration
WORKDIR /var/www/html/configuration

CMD ["dep", "deploy"]

