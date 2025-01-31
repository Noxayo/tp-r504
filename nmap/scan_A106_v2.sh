#!/bin/bash

NETWORK="172.16.0.0/24"
OUTPUT_FILE="scan-result_1.csv"
echo "# - IP - TCP ports - UDP ports" > $OUTPUT_FILE

for ip in $(nmap -sP $NETWORK | grep "Nmap scan report" | awk '{print $5}'); do
    open_ports_tcp=$(nmap --open -n $ip | grep "open" | wc -l)
    open_ports_udp=$(nmap --open -n -sU $ip | grep "open" | wc -l)

    echo "$ip;$open_ports_tcp;$open_ports_udp" >> $OUTPUT_FILE
done

echo "Scan terminé. Résultats enregistrés dans $OUTPUT_FILE"
