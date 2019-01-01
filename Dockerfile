FROM node:8.14

RUN mkdir /app

WORKDIR /app

EXPOSE 3000

RUN yarn install

