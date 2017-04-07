#!/bin/sh

echo "Se ha detectado cambios en la app"
echo "Importando direccion ip de la app"
ip=$(curl -s http://consul:8500/v1/catalog/service/app | python -c "import sys, json; print json.load(sys.stdin)[0]['ServiceAddress']"
)

# Decido que hacer si el otro servicio funciona

if [ $? -eq 0 ]; then
	# Puedo modificar la ip, listos para seguir
	
	echo "Ip de balanceo de cargar: $ip"
	echo "Procediendo a modificar los archivos de bind con la ip $ip"

	cd /etc/haproxy/
	python replace.py $ip

	/etc/init.d/haproxy restart
else
	# El maestro ha caido, regreso a configuracion base
	
	echo "Todos los servicios de la app han caido, no puedo hacer nada..."

fi
