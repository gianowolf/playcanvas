FROM ubuntu:20.04

ENV CONTAINER_TIMEZONE="America/Sao_Paulo"
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html

RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime \
&& echo $CONTAINER_TIMEZONE > /etc/timezone

RUN apt update && apt install -y apache2

WORKDIR /var/www/html

COPY html .

EXPOSE 80

cmd ["apache2ctl", "-D", "FOREGROUND"]

