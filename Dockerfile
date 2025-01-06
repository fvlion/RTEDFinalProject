# Use the official PHP image with Apache
FROM php:8.0-apache

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable mod_rewrite for Apache (commonly used in PHP apps)
RUN a2enmod rewrite


# Copy the PHP application code into the container
COPY ./myscript.php ./

# Expose port 80 for the web service
EXPOSE 80

# Start Apache when the container runs
CMD ["httpd-foreground"]
