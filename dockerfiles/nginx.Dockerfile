FROM nginx

COPY html /var/www

RUN rm /etc/nginx/conf.d/default.conf 
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# ARG arg_port
# ARG arg_server_name
# ARG arg_uri

# ENV uri ${arg_uri}
# # ENV PORT ${arg_port}
# ENV SERVER_NAME ${arg_server_name}
