ufw allow 1194
ufw allow openSSH
ufw enable
ufw reload
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o ens40 -j MASQUERADE
sysctl -w net.ipv4.ip_forward=1
