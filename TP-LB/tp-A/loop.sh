result=$(curl -s localhost:83?[1-500] | grep -o "<h1>Hello 1</h1>" | wc -l)
echo "Nombre de requetes sur le serveur 1 :" $result;
result2=$((500 - result))
echo "Nombre de requetes sur le serveur 2 :" $result2;