FROM node:6
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

ENV CI true
WORKDIR app

COPY package.json package.json
COPY public public
COPY src src

RUN npm install --silent
RUN npm rebuild node-sass

CMD npm run build
