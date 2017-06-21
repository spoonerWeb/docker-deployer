FROM composer/composer:1.1-alpine
RUN composer global require --dev deployer/deployer:~5.0.3 deployer/recipes:~4.0.0 codeception/codeception:~2.3.3
RUN apk --no-cache add openssh-client rsync
ENTRYPOINT ["dep"]
