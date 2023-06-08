FROM php:8.0-apache

# Copiar archivo dentro

COPY php_crud_example/* /var/www/html/

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y

COPY apache.conf /etc/apache/sites-enable/apache.conf
RUN a2dissite 000-default.conf
RUN a2dissite default-ssl.conf


CMD ["apachectl", "-D", "FOREGROUND"]
