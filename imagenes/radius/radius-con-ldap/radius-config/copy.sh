#!/bin/bash

FREERADIUS=/etc/freeradius

function crearYCopiar {
	touch $FREERADIUS/$1
	chown freerad:freerad $FREERADIUS/$1
	cat $1 > $FREERADIUS/$1
}


crearYCopiar sites-available/default
crearYCopiar modules/ldap
