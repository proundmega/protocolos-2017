#!/bin/bash

#Nombre del stack usado en este deploy
STACK=app

bash build.sh

if [ $? == 0 ]; then

	docker stack deploy --compose-file docker-compose.yml $STACK

	if [ $? == 0 ]; then


		echo "****************************************************************"
		echo "****************************************************************"
		echo "Aplicacion levantada"
		echo ""
		echo "****************************************************************"
		echo "****************************************************************"
	fi
fi
