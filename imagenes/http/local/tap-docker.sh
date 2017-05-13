echo 1 > /proc/sys/net/ipv4/ip_forward

ip tuntap add tap0 mode tap user Proundmega
ifconfig tap0 192.168.0.100/24 up

ip tuntap add tap1 mode tap user Proundmega
ifconfig tap1 192.168.0.101/24 up

ip tuntap add tap2 mode tap user Proundmega
ifconfig tap2 192.168.0.200/24 up
