#!/bin/bash

containers=(
	"postfix" 
	"postfix-ldap" 
	"dovecot-postfix-ldap" 
	"dovecot-v2"
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
