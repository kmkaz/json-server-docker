FROM node:lts-alpine3.15 AS base
WORKDIR /usr/src/json-server
RUN npm install -g json-server

COPY . .
EXPOSE 8080
ENTRYPOINT [ "json-server", "--port", "8080", "--host", "0.0.0.0", "db.json" ]