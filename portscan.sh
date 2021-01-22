#!/bin/bash
 
# ./portscan.sh <ip_address>

if [ $1 ]; then
    ip_address=$1
    for port in $(seq 1 65535); do 
        timeout 1 bash -c "echo '' > /dev/tcp/$ip_address/$port" 2>/dev/null && echo "[+] Port $port - Puerto abierto" &
    done; wait
else
    echo -e "\n[+] Uso: ./portscan.sh <ip_address>\n"
    
    echo "echo por Akronox (Ctrl +c para cortar)"
        exit 1
fi
