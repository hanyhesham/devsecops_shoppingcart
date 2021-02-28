FROM node:lts-alpine3.12

RUN npm install -g @vue/cli

mkdir /app

COPY ./ /app

WORKDIR /app

npm install

