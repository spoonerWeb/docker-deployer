FROM torvitas/php-fpm:5.6
MAINTAINER "Sascha Marcel Schmidt" <docker@saschaschmidt.net>
RUN apt-get update && apt-get install rsync openssh-client unzip -y && rm -r /var/lib/apt/lists/*
RUN composer global remove codeception/codeception && \
    composer global update && \
    composer global require --dev deployer/deployer:~3.3 deployphp/recipes:~3.1
COPY bin/ /usr/local/bin/
CMD ["dep"]
