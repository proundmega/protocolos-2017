#!/bin/bash

# Compilo el app de Java

REPLICAS_JAVA_A=1
REPLICAS_JAVA_B=1


bash undeploy.sh

cd java-app

bash build.sh

if [ $? == 0 ]; then
	cd ..

	cd haproxy

	bash build.sh

	if [ $? == 0 ]; then
		
		cd ..

		docker stack deploy --compose-file docker-compose.yml app

		if [ $? == 0 ]; then

			#docker service create --name java-a --network app_app --replicas $REPLICAS_JAVA_A test/java
		
			#docker service create --name java-b --network app_app --replicas $REPLICAS_JAVA_B test/java



			echo "****************************************************************"
			echo "Aplicacion levantada"
			echo "Prueba conectarte al app usando una ip MENOS LOCALHOST. Con localhost no funciona"
			echo "Y claro, conectate usando el puerto 8080"
			echo "Se han levantado 3 sesiones. Para probar el cambio a otro servidor prueba hacer esto:"
			echo "docker service scale app_java-1-1=1"
			echo "Y prueba conectarte de nuevo en la sesion"


		fi	


	fi
	

fi




