FROM node:7
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

RUN apt-get update -y
RUN apt-get install -y python python-dev python-pip

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN npm install
RUN npm rebuild node-sass
RUN npm run build

RUN python api/hello.py