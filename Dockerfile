FROM composer/composer:php5-alpine
RUN composer global require --dev deployer/deployer:~4.0.0 deployer/recipes:~4.0.0
ENTRYPOINT ["dep"]
