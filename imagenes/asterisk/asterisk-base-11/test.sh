#/bin/bash

source config/docker.conf

# Levanta el docker usando bash para permitir alteraciones en caliente justo al terminar su compilacion

docker run --rm -v/home/Proundmega/Escritorio/asterisk-11:/build --name $RUNTIME_NOMBRE -it $DOCKER_NOMBRE bash
