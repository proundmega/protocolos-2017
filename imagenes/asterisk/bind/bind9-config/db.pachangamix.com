;
; BIND data file for local loopback interface
;
$TTL	10
@	10	IN	SOA	ns1.pachangamix.com. admin.pachangamix.com. (
			      17		; Serial
			  10		; Refresh
			  10		; Retry
			  30		; Expire
			  10 )	; Negative Cache TTL
;
pachangamix.com. IN NS ns1.pachangamix.com.

ns1	IN	A	192.168.43.135
@	IN	A	192.168.43.135
asterisk	IN	A	192.168.43.135
