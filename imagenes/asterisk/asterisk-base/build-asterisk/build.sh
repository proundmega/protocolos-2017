#!/bin/bash

DEBIAN_FRONTEND="noninteractive"

# Añado la linea de codigo de area
cat << EOF | debconf-set-selections
libvpb0	libvpb0/countrycode	string	503
EOF

apt-get install -y libvpb0  aptitude

# Descargo asterisk y las dependencias
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-14-current.tar.gz
tar -xvf asterisk-14-current.tar.gz
cd asterisk-14.5.0/

# Descargo las dependencias de asterisk
cd contrib/scripts
./install_prereq install

cd ..
cd ..

# Autoconfigura asterisk. Tiene soporte por defecto de ldap!!
./configure


# Instalamos asterisk
make
make install
make samples
make progdocs
make config


# Remuevo todo lo que no sirve
apt-get remove --purge -y g++ gcc man-db aptitude build-essential make less

# Borro la carpeta de instalacion

cd  /
rm -rf build-asterisk/

