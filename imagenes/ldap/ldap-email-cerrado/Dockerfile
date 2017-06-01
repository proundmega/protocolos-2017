FROM proundmega/ldap-email-usuarios:latest

ENV PASSWORD=ldap

RUN mkdir /etc/ldif
COPY ldif/ /etc/ldif

# Añado el ou=produccion
RUN /etc/init.d/slapd start && \
	ldapadd -x -w $PASSWORD -D "cn=admin,dc=pachangamix,dc=com" -f /etc/ldif/ou.ldif -h localhost && \
	 /etc/init.d/slapd stop

# Altero permisos de usuario 'lectura' a solo lectura
RUN /etc/init.d/slapd start && \
	ldapmodify -x -w $PASSWORD -D "cn=admin,cn=config" -f /etc/ldif/permisos.ldif -h localhost && \
	 /etc/init.d/slapd stop

RUN rm -rf /etc/ldif
