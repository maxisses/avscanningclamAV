FROM alpine

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

WORKDIR /virusfiles

COPY . .

USER root

RUN chmod 777 test*