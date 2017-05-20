#/bin/bash

source config/docker.conf

# Levanta el docker usando bash para permitir alteraciones en caliente justo al terminar su compilacion

docker run --rm --name $RUNTIME_NOMBRE -it $DOCKER_NOMBRE bash
