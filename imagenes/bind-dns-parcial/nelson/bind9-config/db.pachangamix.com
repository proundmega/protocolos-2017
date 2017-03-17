;
; BIND data file for local loopback interface
;
$TTL	30
$ORIGIN pachangamix.com.
@	30	IN	SOA	ns1.pachangamix.com. admin.pachangamix.com. (
			      17		; Serial
			 30		; Refresh
			  30		; Retry
			70		; Expire
			 30 )	; Negative Cache TTL
;
pachangamix.com. IN NS ns1.pachangamix.com.

ns1	IN	A	192.168.0.200
ns1	IN	AAAA	2001:db8:1::1	

www	IN	A	192.168.0.201
www	IN	AAAA	2001:db8:1::2

1w	IN MX 10 mail

mail	IN	A	192.168.0.210
mail	IN	AAAA	2001:db8:1::10
