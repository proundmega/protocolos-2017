#!/bin/sh

echo "Se ha detectado cambios en los dns"
echo "Importando direccion ip de mi maestro..."
ip=$(curl -s http://consul:8500/v1/catalog/service/nelson | python -c "import sys, json; print json.load(sys.stdin)[0]['ServiceAddress']"
)

# Decido que hacer si el otro servicio funciona

if [ $? -eq 0 ]; then
	# Puedo modificar la ip, listos para seguir
	
	echo "Ip de mi maestro: $ip"
	echo "Procediendo a modificar los archivos de bind con la ip $ip"

	cd /etc/bind/runtime
	python replace.py $ip
	cd ..
	mv runtime/named.conf.masters.release named.conf.masters

	/etc/init.d/bind9 restart
else
	# El maestro ha caido, regreso a configuracion base
	
	echo "Servido dns maestro caido, por ahora funcionare sin uno...."
	#cp /etc/bind/runtime/named.conf.masters.dummy /etc/bind/named.conf.masters

	#/etc/inid.d/bind9 restart

fi
