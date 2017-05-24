#!/bin/bash


function build_container {
	if [ $? -eq 0 ]; then
		cd $1
		bash build.sh

		if [ $? -eq 0 ]; then
			cd ..
		fi
	fi
};

build_container ldap
build_container ldap-email-abierto
build_container ldap-email-cerrado
