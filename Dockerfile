FROM geerlingguy/php-apache:latest

RUN rm /var/html/index.html
COPY index.php /var/www/html/index.php
