#!/bin/bash

function copy_file {
	cat $1 > /etc/dovecot/$1
}

copy_file conf.d/10-master.conf
copy_file conf.d/15-lda.conf

