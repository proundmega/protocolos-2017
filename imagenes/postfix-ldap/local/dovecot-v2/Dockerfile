FROM proundmega/dovecot-local:latest

# Practica 2: dovecot optimizado
# Configuracion dovecot
COPY dovecot-config/ etc/copy
RUN cd etc/copy && chmod a+x copy.sh && bash copy.sh

# Configuracion postfix
COPY postfix-config/ etc/postfix
