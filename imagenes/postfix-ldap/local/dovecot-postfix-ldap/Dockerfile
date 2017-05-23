FROM proundmega/postfix-ldap-local:latest

RUN apt-get install -y dovecot-imapd net-tools telnet dovecot-ldap
COPY dovecot-config/ etc/copy
RUN cd etc/copy && chmod a+x copy.sh && bash copy.sh

EXPOSE 143
CMD ["/bin/sh", "-c", "service syslog-ng start; service postfix start; service dovecot start; umask 0 && truncate -s0 /var/log/mail.log; tail -n0 -F /var/log/mail.log"]
