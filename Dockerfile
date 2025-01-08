FROM php:8.2-apache
RUN apt-get update && apt upgrade -y
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
RUN a2enmod ssl && a2enmod rewrite
RUN mkdir -p /etc/apache2/ssl
RUN mkdir -p /var/www/inc
WORKDIR /var/www/html
COPY ./index.php /var/www/html/
WORKDIR /var/www/inc
COPY ./dbinfo.inc /var/www/inc
WORKDIR /var/www/html
EXPOSE 80
CMD ["apache2-foreground"]

