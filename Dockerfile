FROM geerlingguy/php-apache:latest

RUN rm -rf /var/html/index.html

COPY index.php /var/www/html/index.php

COPY ./ports.conf /etc/apache2/ports.conf
COPY ./apache.conf /etc/apache2/sites-enabled/000-default.conf
