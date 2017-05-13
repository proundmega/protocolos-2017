FROM proundmega/container-pilot:latest

# *** Notas ***
# Si no se indica ningun CMD, el contenedor ejecuta: tail -f /dev/null que es para
# mantener con vida el contenedor y asi levantar procesos como daemons.

# Para que funcione el template favor dejar estas lineas tal cual estan
# empieza a agregar tus comandos justo luego de todas ellas.

# *** INICIO DE PARTE OBLIGATORIA ***

RUN apt-get update && apt-get install -y wget haproxy python nano

COPY config /etc
COPY bin /usr/local/bin
RUN chmod 777 /usr/local/bin/*

# Certificados

COPY certs/server.crt /etc/ssl/certs
COPY certs/server.pem /etc/ssl/private

COPY haproxy-config/ /etc/haproxy/
RUN cd /etc/haproxy && python replace.py 127.0.0.1

RUN haproxy -c -f /etc/haproxy/haproxy.cfg






