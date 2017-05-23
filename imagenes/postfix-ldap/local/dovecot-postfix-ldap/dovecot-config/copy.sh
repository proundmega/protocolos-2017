#!/bin/bash

function copy_file {
	cat $1 > /etc/dovecot/$1
}

copy_file dovecot-ldap.conf.ext
copy_file conf.d/10-auth.conf
copy_file conf.d/10-logging.conf
copy_file conf.d/auth-ldap.conf.ext

