FROM httpd:latest 

ENV CONTAINER_TIMEZONE="America/Sao_Paulo"

COPY conf/httpd.conf /usr/local/apache2/conf/httpd.conf

WORKDIR /usr/local/apache2/htdocs/

COPY html /usr/local/apache2/htdocs/

RUN 'httpd -D FOREGROUND'