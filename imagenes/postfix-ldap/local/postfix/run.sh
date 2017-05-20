#/bin/bash

source config/docker.conf

# Si necesitas el mapeo a todo lo que la pc tiene usa: 
# --net=host
# 
# Si necesitas añadir puertos sigue la convension:
# -p [puerto_destino_host]:[puerto_origen_docker]/[tcp|ip]
# Ejemplo: -p 50:50/tcp

docker run --rm -it --net=host -p 25:25 --name $RUNTIME_NOMBRE $DOCKER_NOMBRE

