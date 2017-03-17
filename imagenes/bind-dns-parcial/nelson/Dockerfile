FROM debian:latest
RUN apt-get update && apt-get install -y bind9 dnsutils
ADD bind9-config.tar.gz /etc/bind/
RUN named-checkconf && named-checkzone manijapones.com /etc/bind/db.manijapones
EXPOSE 53
CMD named -f
