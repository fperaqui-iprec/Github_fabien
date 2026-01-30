#!/bin/bash

# TP2 - Script 3 : Vérification de nombre
echo "=== Script 3 : Vérification de nombre ==="

# Version interactive
echo "Version interactive :"
while true; do
    read -p "Entrez un nombre : " nombre
    
    # Vérifier que c'est un nombre
    if ! [[ "$nombre" =~ ^[0-9]+$ ]]; then
        echo "Erreur : Veuillez entrer un nombre valide."
        continue
    fi
    
    if [ "$nombre" -lt 20 ]; then
        echo "Veuillez entrer une valeur plus élevée"
    else
        echo "Nombre valide : $nombre (supérieur ou égal à 20)"
        break
    fi
done

# Version de test automatique
echo -e "\nVersion de test :"
test_nombres=(10 15 19 20 25 30)

for test_nb in "${test_nombres[@]}"; do
    echo -n "Test avec $test_nb : "
    if [ "$test_nb" -lt 20 ]; then
        echo "Veuillez entrer une valeur plus élevée"
    else
        echo "✓ Nombre valide"
    fi
done

echo "=== Fin du Script 3 ==="