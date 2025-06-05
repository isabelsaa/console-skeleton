FROM php:8.4.7-cli-bookworm
RUN curl -sSL https://getcomposer.org/download/2.8.9/composer.phar -o /usr/local/bin/composer &&\
    chmod 0755 /usr/local/bin/composer
RUN apt-get update &&\
    apt-get install --no-install-recommends -y git unzip libzip-dev

RUN docker-php-ext-install zip

WORKDIR /app

RUN git config --global --add safe.directory /app
CMD ["bin/console", "app:create-user"]


