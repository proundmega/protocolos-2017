#/bin/bash

source docker.conf

BIND_DIR='bind9-config/'
BIND_CONFIG_ZIP='bind9-config.tar.gz'

# Accedo al directorio de configuracion y comprimo todo
echo "**********************************************************"
#sleep 1s
echo "**********************************************************"
#sleep 1s
echo "**********************************************************"
#sleep 1s
echo "****** Builder de dns para dominio maestro: pachangamix.com ******"
#sleep 2s


echo "**********************************************************"
#sleep 1s
echo ""
echo "Construyendo imagen de Docker..."
echo "**********************************************************"
#sleep 1s

if [ $? -eq 0 ]; then
	docker build -t $DOCKER_NOMBRE .
	
	if [ $? -eq 0 ]; then
		echo "**********************************************************"
		#sleep 1s
		echo ""
		#sleep 1s
		echo "Contenedor compilado, listo para ser ejecutado..."
		#sleep 1s
		echo "Para iniciar la ejecucion, por favor ejecute el comando: "
		#sleep 2s
		echo ""
		echo "bash run.sh"
		#sleep 3s
		echo "**********************************************************"
		#sleep 1s
		echo "**********************************************************"
		#sleep 1s
		echo "Nombre del contenedor construido: "$DOCKER_NOMBRE
		#sleep 1s
		echo "**********************************************************"
		#sleep 1s
		echo "**********************************************************"
		#sleep 1s
		echo "Dominio maestro: pachangamix.com"
		#sleep 1s
		echo "Entrada 1: ns1.pachangamix.com (192.168.0.200, 2001:db8:1::1)"
		#sleep 1s
		echo "Entrada 2: www.pachangamix.com (192.168.0.201, 2001:db8:1::2)"
		#sleep 1s
		echo "**********************************************************"
	fi

	
fi
