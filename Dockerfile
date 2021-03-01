FROM node:lts-alpine3.12
RUN npm install -g @vue/cli
COPY ./ /app
WORKDIR /app
RUN npm install
EXPOSE 8080
CMD npm run serve 
