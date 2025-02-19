# Installs Node.js image
FROM node:20.12.2-alpine3.18

WORKDIR /usr/src/api

COPY . .

RUN rm -rf node_modules

RUN npm config get proxy

RUN npm install

RUN npm run build

CMD npm run start