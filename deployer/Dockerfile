FROM torvitas/php-fpm:5.6
MAINTAINER "Sascha Marcel Schmidt" <docker@saschaschmidt.net>
RUN apt-get update && apt-get install rsync openssh-client -y && rm -r /var/lib/apt/lists/*
RUN bash -c "source /usr/local/etc/entrypoint.functions.sh && \
    disableXDebug && \
    composer global remove phpunit/phpunit && \
    composer global update && \
    composer global require --dev deployer/deployer:~3.0 deployphp/recipes:~3.0 && \
    enableXDebug"
COPY bin/ /usr/local/bin/
COPY ssh/ /home/develop/.ssh/
RUN chmod 700 -R /home/developer/.ssh
RUN chown 1000.1000 -R /home/developer/.ssh
CMD ["dep:develop"]
