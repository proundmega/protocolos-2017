#!/bin/bash

DOMAIN=pachangamix.com
PASSWORD=ldap

cat << EOF | debconf-set-selections
slapd slapd/password2 password $PASSWORD
slapd slapd/password1 password $PASSWORD
slapd slapd/domain string $DOMAIN
EOF
