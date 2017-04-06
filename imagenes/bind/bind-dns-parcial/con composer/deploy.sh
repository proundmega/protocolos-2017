#!/bin/bash

echo "Compilando contenedor de consul"
cd consul/
bash build.sh

if [ $? -eq 0 ]; then
	cd ..

	echo "Compilando contenedor de nelson"
	cd nelson-consul/
	bash build.sh

	if [ $? -eq 0 ]; then
		cd ..

		echo "Compilando contenedor de nelson"
		cd vansi-consul/
		bash build.sh

		if [ $? -eq 0 ]; then
			echo "Imagenes compiladas, subiendolas al repo..."
			

			cd ..
			echo "Contenedores compilados, listos para hacer deploy..."
			
			bash undeploy.sh
			docker stack deploy --compose-file docker-compose.yml dns
			
			echo "Stack 'dns' lanzado, pruebe hacer dig a los host deseados..."

		else
			echo "Error al compilar el contenedor de vansi, build detenido"
		fi
				


	else
		echo "Error al compilar el contenedor de nelson, build detenido"
	fi

else
	echo "Error al compilar el contenedor de consul, build detenido"
fi
