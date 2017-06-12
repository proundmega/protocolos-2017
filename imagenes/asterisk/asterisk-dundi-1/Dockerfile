FROM proundmega/asterisk-base:13

EXPOSE 4520/udp

COPY keys/ /var/lib/asterisk/keys
COPY asterisk-config/ /etc/asterisk

#CMD bash -c "service asterisk start; sleep 3s; asterisk -rv; service asterisk stop;"
