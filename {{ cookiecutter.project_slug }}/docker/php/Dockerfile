FROM php:8.3-fpm


RUN docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli


RUN pecl install xdebug \
    && docker-php-ext-enable xdebug 

COPY ./conf.d/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
