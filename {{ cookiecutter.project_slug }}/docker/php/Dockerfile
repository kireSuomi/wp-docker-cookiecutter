{% if cookiecutter.os_choice == '8.1' %}
FROM php:8.1-fpm
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug 

{% else %}
FROM php:7.4-fpm

RUN pecl install xdebug-3.1.0 \
    && docker-php-ext-enable xdebug
{% endif %}


RUN docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli




COPY ./conf.d/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
