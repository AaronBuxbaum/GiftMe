FROM node:6
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

WORKDIR app

COPY package.json package.json
COPY public public
COPY src src

RUN npm install --silent
RUN npm rebuild node-sass

#RUN npm run build
CMD npm run start

EXPOSE 3000
