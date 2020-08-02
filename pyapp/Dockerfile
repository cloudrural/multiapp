FROM python:3.7.8-alpine3.12

RUN mkdir /web
COPY index.html /web
COPY web.py /web

WORKDIR /web

EXPOSE 8080

CMD ["python3","web.py"]
