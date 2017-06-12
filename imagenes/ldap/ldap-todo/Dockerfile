FROM debian:latest

ENV PASSWORD_LDAP ldap
ENV PASSWORD_CONFIG ldap
ENV DOMAIN pachangamix.com

# Toda esta parte es configuracion de ldap. NO MODIFICAR
RUN mkdir -p /etc/docker/config
COPY config/ /etc/docker/config
RUN chmod a+x /etc/docker/config/config-slapd.sh && bash /etc/docker/config/config-slapd.sh

RUN apt-get update && apt-get install -y slapd ldap-utils
EXPOSE 389
EXPOSE 636

# Esta parte es para añadir el password a config...
RUN mkdir -p /etc/ldif
COPY ldif /etc/ldif

RUN /etc/init.d/slapd start && ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldif/password.ldif && /etc/init.d/slapd stop

# Añadimos soporte de asterisk
RUN /etc/init.d/slapd start && \
	 ldapadd -x -w $PASSWORD_CONFIG -D "cn=admin,cn=config" -f /etc/ldif/asterisk.ldif -h localhost && \
	 /etc/init.d/slapd stop

# Añado el ou=produccion
RUN /etc/init.d/slapd start && \
	ldapadd -x -w $PASSWORD_LDAP -D "cn=admin,dc=pachangamix,dc=com" -f /etc/ldif/ou.ldif -h localhost && \
	 /etc/init.d/slapd stop

# Añado a los usuarios
RUN /etc/init.d/slapd start && \
	 ldapadd -x -w $PASSWORD_LDAP -D "cn=admin,dc=pachangamix,dc=com" -f /etc/ldif/usuarios.ldif -h localhost && \
	 /etc/init.d/slapd stop

RUN rm -rf /etc/ldif

CMD slapd -d -1




