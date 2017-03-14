#/bin/bash

docker run --net=host -p 53:53/tcp -it proundmega/bind9-master bash
