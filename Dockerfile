FROM golang:latest

RUN  apt-get update && \
  apt-get -y install ca-certificates \
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