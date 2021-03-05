FROM node:lts-alpine3.12 as build
RUN npm install -g @vue/cli
COPY ./ /app
WORKDIR /app
RUN npm install && npm run build
FROM nginx:stable 
RUN rm -r /usr/share/nginx/html
COPY --from=build /app/dist /usr/share/nginx/html
