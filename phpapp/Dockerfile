FROM php:7-apache
MAINTAINER Mahi@gmail.com
RUN mkdir /app
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

COPY index.php /app

WORKDIR /app
EXPOSE 80
CMD ["start-apache","index.php"]
