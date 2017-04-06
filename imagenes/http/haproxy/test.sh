#/bin/bash

source config/docker.conf

docker run -p 8080:8080 -p 4848:4848 --rm --name hola -it $DOCKER_NOMBRE bash
