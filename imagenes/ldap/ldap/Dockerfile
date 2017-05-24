FROM debian:latest

# Toda esta parte es configuracion de ldap. NO MODIFICAR
RUN mkdir -p /etc/docker/config
COPY config/ /etc/docker/config
RUN chmod a+x /etc/docker/config/config-slapd.sh && bash /etc/docker/config/config-slapd.sh

RUN apt-get update && apt-get install -y slapd ldap-utils
EXPOSE 389
EXPOSE 636


# Esta parte es para añadir el password a config...
RUN mkdir -p /ldif
COPY ldif /ldif

RUN /etc/init.d/slapd start && ldapadd -Y EXTERNAL -H ldapi:/// -f /ldif/password.ldif && /etc/init.d/slapd stop

CMD slapd -d -1




