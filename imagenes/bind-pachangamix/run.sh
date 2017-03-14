#/bin/bash

echo "**********************************************************"
echo "**********************************************************"
echo ""
echo "Proceso en ejecucion, prueba abrir otra consola y usar dig"
echo "**********************************************************"
echo "Dominio: pachangamix.com"
echo "Entrada 1: ns1.pachangamix.com (192.168.0.200, 2001:db8:1::1)"
echo "Entrada 2: www.pachangamix.com (192.168.0.201, 2001:db8:1::2)"
echo "**********************************************************"

docker run --net=host -p 53:53/tcp -it proundmega/bind9-pachangamix

