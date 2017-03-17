#!/bin/bash


echo "Construyendo los contenedores..."
cd nelson
bash build.sh
cd ..

cd vansi
bash build.sh
cd ..

echo "Borrando los servicios antes creados"
docker service remove nelson
docker service remove vansi

echo "Creando los servicios"
docker service create --name nelson -p 53:53/tcp -p 53:53/udp --network dns nelson/parcial
docker service create --name vansi -p 54:53/tcp -p 54:53/udp --network dns proundmega/bind9-pachangamix-parcial

