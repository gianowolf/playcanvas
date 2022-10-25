FROM nginx

# RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf 

COPY html /usr/share/nginx/html 
# COPY conf /etc/nginx/nginx.conf

ARG external_port=80

ENV NGINX_PORT=${external_port}



