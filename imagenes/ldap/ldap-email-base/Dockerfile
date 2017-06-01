FROM proundmega/ldap:latest

ENV PASSWORD=ldap

RUN mkdir /etc/ldif
COPY ldif/ /etc/ldif

# Configuro el email aqui
RUN /etc/init.d/slapd start && \
	 ldapadd -x -w $PASSWORD -D "cn=admin,cn=config" -f /etc/ldif/authldap.ldif -h localhost && \
	 /etc/init.d/slapd stop

# Añado el ou=produccion
RUN /etc/init.d/slapd start && \
	ldapadd -x -w $PASSWORD -D "cn=admin,dc=pachangamix,dc=com" -f /etc/ldif/ou.ldif -h localhost && \
	 /etc/init.d/slapd stop

RUN rm -rf /etc/ldif
