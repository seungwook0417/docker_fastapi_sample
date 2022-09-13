FROM python:alpine3.16

# install build-base(gcc) for uvicorn
RUN apk add build-base

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
COPY . /app/

WORKDIR /app
RUN chmod +x /app/entry.sh
ENTRYPOINT /app/entry.sh