FROM debian:latest

RUN apt-get update && apt-get install -y wget

COPY build-asterisk/ /build-asterisk/

RUN chmod a+x /build-asterisk/build.sh && cd /build-asterisk/ && bash build.sh

EXPOSE 5060/tcp
EXPOSE 5060/udp

RUN apt-get install -y nano curl

CMD ["bash", "-c", "service asterisk start; sleep 3s; asterisk -rvvvvvvv; service asterisk stop"]



