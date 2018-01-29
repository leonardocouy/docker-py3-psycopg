FROM python:3-alpine3.7
LABEL maintainer="Leonardo Flores <contato@leonardocouy.com>"

RUN apk add --update --virtual .build-deps gcc musl-dev postgresql-dev \
    && pip install psycopg2 --no-cache-dir \
    && apk --purge del .build-deps

