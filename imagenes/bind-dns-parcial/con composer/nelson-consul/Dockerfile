FROM proundmega/container-pilot:latest
RUN apt-get update && apt-get install -y bind9 dnsutils

COPY bind9-config /etc/bind/
RUN named-checkconf && named-checkzone manijapones.com /etc/bind/db.manijapones
EXPOSE 53

COPY config /etc
COPY bin /usr/local/bin
RUN chmod 777 /usr/local/bin/*
