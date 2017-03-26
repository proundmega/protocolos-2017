#!/bin/bash

source docker.conf

docker build -t $DOCKER_NOMBRE .

if [ $? -eq 0 ]; then
	echo "**********************************************************"
	echo "**********************************************************"
	echo "Nombre del contenedor construido: "$DOCKER_NOMBRE
	echo "**********************************************************"
	echo "**********************************************************"	
fi
