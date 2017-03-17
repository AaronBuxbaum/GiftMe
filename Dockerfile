FROM beevelop/nodejs:6
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

RUN apt-get update
RUN apt-get install python python-dev python-pip

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN npm install
RUN npm run build

RUN python api/hello.py