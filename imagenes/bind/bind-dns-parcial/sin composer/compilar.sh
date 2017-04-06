#!/bin/bash

IMAGEN_VANSI='proundmega/bind9-pachangamix-parcial'
IMAGEN_NELSON='nelson/parcial'

echo "Construyendo los contenedores..."
cd nelson
bash build.sh
cd ..

cd vansi
bash build.sh
cd ..

echo "Creando imagenes listas para pasar por usb..."
docker save $IMAGEN_NELSON -o nelson.tar
docker save $IMAGEN_VANSI -o vansi.tar
 
