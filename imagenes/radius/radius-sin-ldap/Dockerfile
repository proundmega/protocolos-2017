FROM debian:latest

RUN apt-get update && apt-get install -y freeradius-ldap freeradius nano

COPY radius-config/ /config
RUN cat /config/users > /etc/freeradius/users

RUN service freeradius start && radtest juan juan localhost 123 testing123 && service freeradius stop

CMD freeradius -X


