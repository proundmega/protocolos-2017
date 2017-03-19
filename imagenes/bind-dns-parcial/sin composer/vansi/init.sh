firewall-cmd --add-port=1-10000/tcp
firewall-cmd --add-port=1-10000/udp
firewall-cmd --list-ports

iptables -P INPUT ACCEPT

# firewall-cmd --add-port=1-10000/tcp

