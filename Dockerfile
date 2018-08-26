FROM python:3.7.0-alpine

RUN mkdir /app

WORKDIR /app

RUN pip install pipenv

COPY Pipfile ./
COPY Pipfile.lock ./

RUN pipenv install --system
