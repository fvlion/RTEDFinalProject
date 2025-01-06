FROM php:8.2-apache
RUN docker-php-ext-install pdo pdo_mysql
RUN a2enmod ssl && a2enmod rewrite
RUN mkdir -p /etc/apache2/ssl
COPY ./myscript.php ./
EXPOSE 80
EXPOSE 443
CMD ["php", "myscript.php"]
