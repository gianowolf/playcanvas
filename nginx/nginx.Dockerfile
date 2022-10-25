FROM nginx:stable

COPY -from=build ../html /var/www

RUN rm /etc/nginx/conf.d/default.conf 
COPY ./nginx.conf /etc/nginx/conf.d/default.conf.template

ARG arg_port 80
ARG arg_server_name _
ARG arg_uri /$uri  

ENV uri ${arg_uri}
ENV PORT ${arg_port}
ENV SERVER_NAME ${arg_uri}

CMD ["sh", "-c", "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
