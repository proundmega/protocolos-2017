#!/bin/bash

bash compilar.sh

echo "Creando archivo para exportar"
touch worker.token
docker swarm join-token worker > worker.token

touch manager.token
docker swarm join-token manager > manager.token


# Levanto los servicios

echo "Borrando los servicios antes creados"
docker service remove nelson
docker service remove vansi

echo "Creando los servicios"
docker service create --name nelson -p 53:53/tcp -p 53:53/udp --network dns nelson/parcial
docker service create --name vansi -p 54:53/tcp -p 54:53/udp --network dns proundmega/bind9-pachangamix-parcial

