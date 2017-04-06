#/bin/bash

source docker.conf

docker run -p 53:53/tcp -p 53:53/udp --rm --name master -it $DOCKER_NOMBRE bash
