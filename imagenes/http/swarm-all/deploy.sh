#!/bin/bash

# Compilo el app de Java

bash build.sh

if [ $? == 0 ]; then

	docker stack deploy --compose-file docker-compose.yml app

	if [ $? == 0 ]; then


		echo "****************************************************************"
		echo "Aplicacion levantada"
		echo "Prueba conectarte al app usando una ip MENOS LOCALHOST. Con localhost no funciona"
		echo "Y claro, conectate usando el puerto 8080"
		echo "Se han levantado 3 sesiones. Para probar el cambio a otro servidor prueba hacer esto:"
		echo "docker service scale app_java-1-1=1"
		echo "Y prueba conectarte de nuevo en la sesion"

	fi
fi
