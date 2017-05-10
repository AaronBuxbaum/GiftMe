FROM python:latest
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

WORKDIR /app/api

RUN pip install -r requirements.txt

CMD unbuffer gunicorn hello:app