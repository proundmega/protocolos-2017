#!/bin/bash

DEBIAN_FRONTEND="noninteractive"
ASTCFLAGS="-Ofast -march=native -fexpensive-optimizations"

# Añado la linea de codigo de area
cat << EOF | debconf-set-selections
libvpb0	libvpb0/countrycode	string	503
EOF

apt-get install -y libvpb0  aptitude git libldap2-dev

# Descargo asterisk y las dependencias
git clone -b 11 http://gerrit.asterisk.org/asterisk asterisk-11
cd asterisk-11/

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

