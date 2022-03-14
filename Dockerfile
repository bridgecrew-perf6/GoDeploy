FROM golang:alpine

RUN  apk update && \
  apk add --no-cache ca-certificates \
  openssh-client \
  sshpass \
  bash


COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

WORKDIR /usr/src/app

COPY ./app ./
RUN ls -la

RUN go mod download
RUN go build -o /build-deploy

#ENTRYPOINT ["/entrypoint.sh"]