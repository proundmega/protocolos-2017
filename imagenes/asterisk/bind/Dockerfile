FROM debian:latest
RUN apt-get update && apt-get install -y bind9 dnsutils
COPY bind9-config/ /etc/bind/
RUN named-checkconf && named-checkzone pachangamix.com /etc/bind/db.pachangamix.com
EXPOSE 53
CMD named -f
