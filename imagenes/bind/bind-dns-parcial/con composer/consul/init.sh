#!/bin/bash
IP=$(getent hosts consul | awk '{ print $1 }')
echo $IP
consul agent -client=$IP -dev
