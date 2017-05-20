FROM debian:latest

# Configuro postfix para que use los parametros especificados
ENV DEBIAN_FRONTEND noninteractive
RUN echo "postfix postfix/main_mailer_type string Internet site" > preseed.txt
RUN echo "postfix postfix/mailname string pachangamix.com" >> preseed.txt
RUN debconf-set-selections preseed.txt

RUN apt-get update && apt-get install -y postfix wget nano

# Mete logging que si funciona
RUN apt-get install -y syslog-ng syslog-ng-core
RUN sed -i -E 's/^(\s*)system\(\);/\1unix-stream("\/dev\/log");/' /etc/syslog-ng/syslog-ng.conf
RUN sed -i 's/^#\(SYSLOGNG_OPTS="--no-caps"\)/\1/g' /etc/default/syslog-ng

# Creo las carpetas y usuarios
RUN mkdir /home/inmortal
RUN groupadd -g 2017 inmortal && useradd -d /home/inmortal -g 2017 -u 2017 inmortal

# Termino de configurar postfix
RUN mkdir -p /home/inmortal/pachangamix/
RUN chown -R inmortal:inmortal  /home/inmortal/pachangamix/

# Comandos finales
EXPOSE 25 

CMD ["/bin/sh", "-c", "postfix check; service syslog-ng start; service postfix start; umask 0 && truncate -s0 /var/log/mail.log; tail -n0 -F /var/log/mail.log"]



