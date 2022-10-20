;
; BIND data file for local thiagomartins.com
;
$TTL	604800
@	IN	SOA	thiagomartins.com. root.thiagomartins.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.thiagomartins.com.

ns1		IN	A	192.168.1.1
mail	IN	A	192.168.1.1
www		IN	A	192.168.1.1
ftp		IN	A	192.168.1.1