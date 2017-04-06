;
; BIND data file for local loopback interface
;
$TTL	10
$ORIGIN pachangamix.com.
@	10	IN	SOA	ns1.pachangamix.com. admin.pachangamix.com. (
			      17		; Serial
			  10		; Refresh
			  10		; Retry
			  30		; Expire
			  10 )	; Negative Cache TTL
;
pachangamix.com. IN NS ns1.pachangamix.com.

ns1	IN	A	192.168.1.100
ns1	IN	AAAA	2001:db8:1::1	

www	IN	A	192.168.1.101
www	IN	AAAA	2001:db8:1::2

1w	IN MX 10 mail

mail	IN	A	192.168.1.112
mail	IN	AAAA	2001:db8:1::10
