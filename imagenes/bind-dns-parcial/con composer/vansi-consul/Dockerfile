FROM debian:latest
RUN apt-get update && apt-get install -y bind9 dnsutils curl

# Codigo para correr container-pilot
ENV CONTAINERPILOT_VERSION 2.1.2
RUN export CP_SHA1=c31333047d58ba09d647d717ae1fc691133db6eb \
    && curl -Lso /tmp/containerpilot.tar.gz \
         "https://github.com/joyent/containerpilot/releases/download/${CONTAINERPILOT_VERSION}/containerpilot-${CONTAINERPILOT_VERSION}.tar.gz" \
    && echo "${CP_SHA1}  /tmp/containerpilot.tar.gz" | sha1sum -c \
    && tar zxf /tmp/containerpilot.tar.gz -C /bin \
    && rm /tmp/containerpilot.tar.gz

COPY bind9-config /etc/bind/
RUN named-checkconf && named-checkzone pachangamix.com /etc/bind/db.pachangamix.com
EXPOSE 53

# Add our configuration files and scripts
ENV CONTAINERPILOT=file:///etc/containerpilot.json
COPY config /etc
COPY bin /usr/local/bin
RUN chmod 777 /usr/local/bin/*


EXPOSE 8500
EXPOSE 8300

CMD ["/bin/containerpilot", "tail", "-f", "/dev/null"]


