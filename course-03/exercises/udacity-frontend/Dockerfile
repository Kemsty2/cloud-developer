FROM node:12 AS ionic
WORKDIR /usr/src/app

RUN npm i -g ionic

COPY package*.json ./

RUN npm ci

COPY . .

RUN ionic build

FROM nginx:alpine
COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html