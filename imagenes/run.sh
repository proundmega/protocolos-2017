#!/bin/bash

docker rmi $(docker images -q)

cd ldap/

bash build-all.sh

cd ..

cd asterisk/

bash build-all.sh
