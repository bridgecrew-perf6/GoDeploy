FROM golang:latest

RUN  apk update && \
  apk add --no-cache ca-certificates \
  openssh-client \
  sshpass \
  bash

COPY entrypoint.sh /
COPY create_env.sh /

RUN chmod +x /entrypoint.sh
RUN chmod +x /create_env.sh

WORKDIR /usr/src/app

RUN mkdir build

ENTRYPOINT ["/entrypoint.sh"]