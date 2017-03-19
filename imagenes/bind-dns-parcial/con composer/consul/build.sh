#/bin/bash

source docker.conf

docker build -t $DOCKER_NOMBRE .
