FROM debian:latest

RUN apt-get update && apt-get install -y freeradius-ldap freeradius nano

COPY radius-config /etc/radius-config

RUN cd /etc/radius-config && chmod a+x copy.sh && bash copy.sh

CMD freeradius -X






