FROM debian:latest
RUN mkdir keepalive
RUN apt-get update && apt-get install -y make build-essential libssl-dev wget
COPY files/keepalived.sh /keepalive
RUN cd keepalive/ && bash keepalived.sh
RUN mkdir -p /etc/keepalived

#Configuracion de keepalived
COPY files/init.keepalived.conf /etc/init/keepalived.conf
