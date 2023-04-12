FROM python:3.11.1-alpine3.17

ENV PYTHONUNBUFFERED 1

COPY ./requiremnts.txt /requiremnts.txt

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r requiremnts.txt

ENV PATH="/py/bin:$PATH"

COPY ./app /app
WORKDIR /app

