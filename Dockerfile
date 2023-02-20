# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.17)
FROM alpine:latest AS junction

WORKDIR /root
COPY .ssh .ssh
COPY forward.sh forward.sh

ENV LOCAL_PORT=8080
ENV DESTINATION_PORT=21579
ENV DESTINATION_ADDRESS=root@141.11.37.231
ENV DESTINATION_SSH_PORT=780

#RUN apk add openssh

CMD []