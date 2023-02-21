# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.17)
FROM alpine:latest AS junction

WORKDIR /root
COPY .ssh .ssh

RUN apk add openssh

ENV LOCAL_PORT=8080
ENV DESTINATION_PORT=21579
ENV DESTINATION_USER=root
ENV DESTINATION_ADDRESS=141.11.37.231
ENV DESTINATION_SSH_PORT=780

CMD ["sh","-c","ssh -L $LOCAL_PORT:$DESTINATION_ADDRESS:$DESTINATION_PORT -N -o StrictHostKeyChecking=no -o GatewayPorts=yes $DESTINATION_USER@$DESTINATION_ADDRESS -p $DESTINATION_SSH_PORT"]