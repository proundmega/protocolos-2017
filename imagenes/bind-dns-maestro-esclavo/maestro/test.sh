#/bin/bash

docker run --net=host -p 53:53/tcp -it bind9-master-pachangamix bash
