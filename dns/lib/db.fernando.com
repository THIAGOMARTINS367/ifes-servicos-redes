;
; BIND data file for local fernando.com
;
$TTL	604800
@	IN	SOA	fernando.com. root.fernando.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.fernando.com.

ns1		IN	A	192.168.1.1
mail	IN	A	192.168.1.1
www		IN	A	192.168.1.1
ftp		IN	A	192.168.1.1