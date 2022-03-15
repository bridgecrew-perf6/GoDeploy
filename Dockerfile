FROM golang:latest

RUN  apt-get update && \
  apt-get -y install ca-certificates \
  openssh-client \
  sshpass \
  bash

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

WORKDIR /usr/src/app

ENTRYPOINT ["/entrypoint.sh"]