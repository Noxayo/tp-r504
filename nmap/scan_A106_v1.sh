#!/bin/bash

NETWORK="172.16.0.0/24"
OUTPUT_FILE="scan-result_1.csv"
echo "# - IP - TCP ports" > $OUTPUT_FILE

for ip in $(nmap -sP $NETWORK | grep "Nmap scan report" | awk '{print $5}'); do
    # Compter le nombre de ports ouverts sur chaque machine
    open_ports=$(nmap --open -n $ip | grep "open" | wc -l)

    # Ajouter l'IP et le nombre de ports ouverts au fichier CSV
    echo "$ip;$open_ports" >> $OUTPUT_FILE
done

echo "Scan terminé. Résultats enregistrés dans $OUTPUT_FILE"
