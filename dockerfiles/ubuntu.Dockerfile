FROM ubuntu:20.04

ENV CONTAINER_TIMEZONE="America/Sao_Paulo"
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime \
&& echo $CONTAINER_TIMEZONE > /etc/timezone

RUN apt update && apt install -y apache2

COPY conf/ubuntu.conf /etc/apache2/apache2.conf

WORKDIR /var/www/html
COPY html .

CMD ["apache2ctl", "-D", "FOREGROUND"]