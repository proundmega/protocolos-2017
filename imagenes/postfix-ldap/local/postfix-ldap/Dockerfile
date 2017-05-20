FROM proundmega/postfix-base:latest

RUN apt-get update && apt-get install -y postfix-ldap

# Copio los archivos de configuracion
COPY postfix-config/ /etc/postfix

RUN postmap /etc/postfix/ldap-vmaps.txt
