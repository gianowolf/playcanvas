FROM node:19-slim

ENV NODE_ENV=test 
ENV NODE_USER=node

COPY html /home/node/app 

WORKDIR /home/node/app

EXPOSE 8081

CMD "npm start"