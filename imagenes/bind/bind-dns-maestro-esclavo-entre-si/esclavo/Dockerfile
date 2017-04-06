FROM debian:latest
RUN apt-get update && apt-get install -y bind9 dnsutils
ADD bind9-config.tar.gz /etc/bind/
RUN named-checkconf
EXPOSE 53
CMD named -f
