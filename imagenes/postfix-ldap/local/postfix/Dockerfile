FROM proundmega/postfix-base:latest

# Copio los archivos de configuracion
COPY postfix-config/ /etc/postfix

RUN postmap /etc/postfix/vmaps.txt

# Usuario de prueba
RUN mkdir -p /home/inmortal/pachangamix/jorge.gonzalez
RUN cd /home/inmortal/pachangamix/jorge.gonzalez && mkdir new cur tmp
RUN postmap -q jorge.gonzalez@pachangamix.com hash:/etc/postfix/vmaps.txt
RUN chown -R inmortal:inmortal  /home/inmortal/pachangamix/

