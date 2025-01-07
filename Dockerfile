FROM php:8.2-apache
RUN apt-get update && apt upgrade -y
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
RUN a2enmod ssl && a2enmod rewrite
RUN mkdir -p /etc/apache2/ssl
WORKDIR /var/www/html
COPY ./myscript.php /var/www/html/
EXPOSE 80
CMD ["php", "myscript.php"]
