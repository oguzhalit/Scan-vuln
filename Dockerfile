FROM geerlingguy/php-apache:latest

RUN rm -rf /var/html/index.html
COPY index.php /var/www/html/index.php
