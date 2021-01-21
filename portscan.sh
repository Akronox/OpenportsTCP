#!/bin/bash
 
# ./portscan.sh <ip_address>

if [ $1 ]; then
    ip_address=$1
    for port in $(seq 1 65535); do 
        timeout 1 bash -c "echo '' > /dev/tcp/$ip_address/$port" && echo "puerto abierto" &
    done
else
    echp -e "\n[+] Uso: ./portscan.sh <ip_address>\n"
    
    echo "echo por Akronox (Ctrl +c para cortar)"
        exit
fi
