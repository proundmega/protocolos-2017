#!/bin/bash

containers=(
	"ldap" 
	"ldap-email-base" 
	"ldap-email-usuarios"
	"ldap-email-cerrado"
	"ldap-email-asterisk-base"
)


function build_all() {
	for i in "${containers[@]}"
	do
		build_container $i
		if [ $? -eq 1 ]; then
			exit 1
		fi		
	done

}

function build_container() {
	cd $1
	bash build.sh

	if [ $? -eq 0 ]; then
		cd ..
	else
		exit 1
	fi
}

build_all
