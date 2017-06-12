#!/bin/bash

cat << EOF | debconf-set-selections
slapd slapd/password2 password $PASSWORD_LDAP
slapd slapd/password1 password $PASSWORD_LDAP
slapd slapd/domain string $DOMAIN
EOF
