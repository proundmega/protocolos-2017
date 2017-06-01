FROM debian:latest

RUN apt-get update && apt-get install -y wget

COPY build-asterisk/ /build-asterisk/

RUN chmod a+x /build-asterisk/build.sh && cd /build-asterisk/ && bash build.sh

EXPOSE 5060/tcp
EXPOSE 5060/udp

CMD ["bash", "-c", "service asterisk start; sleep 3s; asterisk -rvvvvv; service asterisk stop"]



