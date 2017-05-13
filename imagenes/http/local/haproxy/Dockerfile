FROM debian:latest

RUN apt-get update && apt-get install -y wget nano haproxy net-tools curl keepalived

# Certificados

COPY certs/server.crt /etc/ssl/certs
COPY certs/server.pem /etc/ssl/private

# Configuracion haproxy
COPY haproxy-config/ /etc/haproxy/
RUN haproxy -c -f /etc/haproxy/haproxy.cfg

EXPOSE 443
EXPOSE 80

CMD haproxy -f /etc/haproxy/haproxy.cfg

# Configuracion keepalived
COPY keepalived-config /etc/keepalived/
