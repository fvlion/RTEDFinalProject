FROM httpd:latest
COPY ./myscript.php ./
EXPOSE 80
CMD ["httpd-foreground"]