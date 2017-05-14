FROM python:latest
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

COPY . .

RUN pip install -r requirements.txt

CMD gunicorn hello:app
