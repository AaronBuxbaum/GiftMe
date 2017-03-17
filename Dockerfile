FROM node:6
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

RUN npm config set loglevel warn

RUN apt-get update -y
RUN apt-get install -y python python-dev python-pip

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN npm install
RUN npm run build

ENTRYPOINT gunicorn hello:app --pythonpath api