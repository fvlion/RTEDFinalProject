FROM php:8.2-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY ./myscript.php ./
EXPOSE 80
CMD ["php", "myscript.php"]
