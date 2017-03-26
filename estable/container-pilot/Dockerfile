FROM debian:latest
RUN apt-get update && apt-get install -y curl

# Codigo para correr container-pilot
ENV CONTAINERPILOT_VERSION 2.1.2
RUN export CP_SHA1=c31333047d58ba09d647d717ae1fc691133db6eb \
    && curl -Lso /tmp/containerpilot.tar.gz \
         "https://github.com/joyent/containerpilot/releases/download/${CONTAINERPILOT_VERSION}/containerpilot-${CONTAINERPILOT_VERSION}.tar.gz" \
    && echo "${CP_SHA1}  /tmp/containerpilot.tar.gz" | sha1sum -c \
    && tar zxf /tmp/containerpilot.tar.gz -C /bin \
    && rm /tmp/containerpilot.tar.gz

# Se añaden los scrits y la configuracion de containerpilot
ENV CONTAINERPILOT=file:///etc/containerpilot.json

# Comando dummy para ejecutarlo
CMD ["/bin/containerpilot", "tail", "-f", "/dev/null"]
