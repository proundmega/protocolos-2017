$TTL	64000
$ORIGIN proundmega.com.
@	IN	SOA	ns1.proundmega.com.	admin.proundmega.com. (
	2017030203	;serial
	12h		;refresh
	15m		;retry
	3w		;ex = expiry
	2h		;nx
)
@ IN	NS	ns1.proundmega.com.

ns1	IN	A 192.168.0.200
ns1	IN	AAAA	2001:db8:0::1

www	IN	A	192.168.0.200
www	IN	AAAA	2001:db8:0::1
