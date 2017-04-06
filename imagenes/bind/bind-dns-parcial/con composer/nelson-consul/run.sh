#/bin/bash

source docker.conf

echo "**********************************************************"
echo "**********************************************************"
echo ""
echo "Proceso en ejecucion, prueba abrir otra consola y usar dig"
echo "**********************************************************"
echo "Dominio: pachangamix.com"
echo "Entrada 1: ns1.pachangamix.com (192.168.0.200, 2001:db8:1::1)"
echo "Entrada 2: www.pachangamix.com (192.168.0.201, 2001:db8:1::2)"
echo "**********************************************************"
# --net=host

docker run -p 53/tcp -p 53/udp --rm --name master -it $DOCKER_NOMBRE

