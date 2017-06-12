#!/bin/bash

DEBIAN_FRONTEND="noninteractive"
ASTCFLAGS="-Ofast -march=native -fexpensive-optimizations"

# Añado la linea de codigo de area
cat << EOF | debconf-set-selections
libvpb0	libvpb0/countrycode	string	503
EOF

# Descargo asterisk y las dependencias
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13-current.tar.gz
tar -xvf asterisk-13-current.tar.gz
cd asterisk-13.16.0/

apt-get install -y libvpb0  aptitude

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
apt-get autoremove -y

# Borro la carpeta de instalacion

cd  /
rm -rf build-asterisk/

