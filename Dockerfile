FROM golang:alpine

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

ENTRYPOINT ["/entrypoint.sh"]