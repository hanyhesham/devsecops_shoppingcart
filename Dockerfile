FROM node:lts-alpine3.12

RUN npm install -g @vue/cli

COPY ./ /app

WORKDIR /app

RUN npm install

