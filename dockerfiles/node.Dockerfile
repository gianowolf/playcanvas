FROM node

RUN mkdir /app 

COPY html /app
COPY conf/server.js /app/server.js
COPY conf/node.json /app/package.json

WORKDIR /app

RUN npm install --only=production

CMD ["npm", "start"]
