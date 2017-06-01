FROM proundmega/ldap-email-base:latest

ENV PASSWORD=ldap

RUN mkdir /etc/ldif
COPY ldif/ /etc/ldif

# Añado a los usuarios de ou=produccion
RUN /etc/init.d/slapd start && \
	ldapadd -x -w $PASSWORD -D "cn=admin,dc=pachangamix,dc=com" -f /etc/ldif/usuarios.ldif -h localhost && \
	 /etc/init.d/slapd stop

RUN rm -rf /etc/ldif
