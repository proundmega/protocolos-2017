#/bin/bash

source config/docker.conf

# --net=host

docker run -p 80:80 --rm --name hola -it $DOCKER_NOMBRE

