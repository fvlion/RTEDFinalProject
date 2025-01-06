FROM php:8.2-apache
COPY ./myscript.php ./
CMD ["php", "myscript.php"]
