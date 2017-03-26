#!/bin/bash
IP=$(getent hosts $HOSTNAME | awk '{ print $1 }')
echo "***** Iniciando servicio de consul en modo desarrollador ******"
echo "Ip de servicio: $IP"
consul agent -client=$IP -dev
