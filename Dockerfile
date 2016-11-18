FROM torvitas/php-fpm:7
MAINTAINER "Sascha Marcel Schmidt" <docker@saschaschmidt.net>
RUN apt-get update && apt-get install rsync openssh-client unzip -y && rm -r /var/lib/apt/lists/*
RUN composer global remove codeception/codeception && \
    composer global update && \
    composer global require --dev deployer/deployer:~4.0.0 deployer/recipes:~4.0.0
COPY bin/ /usr/local/bin/
CMD ["dep"]
