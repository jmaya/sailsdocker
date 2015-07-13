FROM node:slim

#RUN npm install -g sails grunt bower pm2 npm-check-updates
RUN npm install -g sails
RUN npm install -g grunt
RUN npm install -g bower
RUN npm install -g npm-check-updates
#RUN npm install -g pm2@0.12.10
#RUN npm install -g forever
RUN npm install -g nodemon
RUN mkdir /app

VOLUME ["/app"]

ADD . /app
WORKDIR /app
RUN npm install
EXPOSE 1337
