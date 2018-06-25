FROM composer:1.6
RUN composer global require --dev deployer/deployer:^6 deployer/recipes:^6
RUN apk --no-cache add openssh-client rsync
ENTRYPOINT ["dep"]
