#!/bin/bash 
cat  /etc/hosts-pc > /etc/hosts-pc_bak
echo '' > /etc/hosts-pc
wget   -c -O /etc/hosts-pc https://raw.githubusercontent.com/tonydeng/2017hosts/master/hosts-pc
[ $? -eq 0 ] && { sleep 1 && /bin/systemctl restart dnsmasq ;} || cat /etc/hosts-pc_bak > /etc/hosts-pc
