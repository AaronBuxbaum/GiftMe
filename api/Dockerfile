FROM python:latest
MAINTAINER Aaron Buxbaum "me@aaronbuxbaum.com"

WORKDIR app/api

COPY . .

RUN pip3 install -r requirements.txt

CMD ["python", "hello.py"]

EXPOSE 5000
