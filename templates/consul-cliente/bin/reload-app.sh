#!/bin/sh

#Obtengo la ip de un servicio
#ip=$(curl -s http://consul:8500/v1/catalog/service/nelson | python -c "import sys, json; print json.load(sys.stdin)[0]['ServiceAddress']")

# Decido que hacer si el otro servicio funciona

if [ $? -eq 0 ]; then
	
	# TODO codigo que maneja la obtencion de ip
else
	# TODO manejo de un "no se pudo obtener la ip"
fi
