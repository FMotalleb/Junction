# Official Dart image: https://hub.docker.com/_/alpine
FROM alpine:latest AS junction

WORKDIR /root
COPY .ssh .ssh

RUN apk add openssh

CMD ["sh","-c","ssh -L $LOCAL_PORT:$DESTINATION_ADDRESS:$DESTINATION_PORT -N -o StrictHostKeyChecking=no -o GatewayPorts=yes $DESTINATION_USER@$DESTINATION_ADDRESS -p $DESTINATION_SSH_PORT"]