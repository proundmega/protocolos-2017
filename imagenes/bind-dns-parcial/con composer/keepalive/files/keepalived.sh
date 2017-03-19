#!/bin/bash
wget http://www.keepalived.org/software/keepalived-1.2.19.tar.gz
tar xzvf keepalived-1.2.19.tar.gz
cd keepalived-1.2.19
./configure
make
make install

