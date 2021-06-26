FROM geerlingguy/php-apache:latest

RUN apt-get update
RUN apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV PORT 80

RUN rm -rf /var/www/html/index.html

COPY ./index.php /var/www/html/index.php

COPY ./ports.conf /etc/apache2/ports.conf
COPY ./apache.conf /etc/apache2/sites-enabled/000-default.conf


ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
