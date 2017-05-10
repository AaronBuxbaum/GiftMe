FROM node:6
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"
#ENV CI true

COPY package.json package.json

RUN npm install --silent
RUN npm rebuild node-sass

COPY src /app
WORKDIR /app

#RUN npm run build
CMD unbuffer npm run start