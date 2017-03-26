FROM consul
COPY init.sh /
RUN chmod 777 /init.sh
ENV HOSTNAME='consul'
CMD sh /init.sh
