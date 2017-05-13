FROM java:latest

# *** Notas ***
# Si no se indica ningun CMD, el contenedor ejecuta: tail -f /dev/null que es para
# mantener con vida el contenedor y asi levantar procesos como daemons.

# Para que funcione el template favor dejar estas lineas tal cual estan
# empieza a agregar tus comandos justo luego de todas ellas.

# *** INICIO DE PARTE OBLIGATORIA ***

RUN apt-get update && apt-get install -y curl wget

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

COPY config /etc
COPY bin /usr/local/bin
RUN chmod 777 /usr/local/bin/*

# *** FIN DE PARTE OBLIGATORIA ***

# Aqui va tu configuiracion de docker normal

RUN wget https://github.com/proundmega/protocolos-app/releases/download/v1.1/SpringBootLogin-1.1.jar

ENV SPRING_APPLICATION_JSON='{"spring.redis.host":"redis"}'
CMD ["/bin/containerpilot", "java", "-jar", "SpringBootLogin-1.1.jar" ]





