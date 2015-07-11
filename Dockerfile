FROM node:slim

#RUN npm install -g sails grunt bower pm2 npm-check-updates
RUN npm install -g sails grunt bower npm-check-updates
RUN npm install -g pm2@0.12.10
RUN mkdir /app

VOLUME ["/app"]

ADD . /app
WORKDIR /app
RUN npm install
EXPOSE 1337
