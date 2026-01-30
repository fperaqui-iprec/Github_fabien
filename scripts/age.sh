#!/bin/bash

# TP2 - Script 2 : Tranche d'âge
echo "=== Script 2 : Détermination de la tranche d'âge ==="

# Demander l'âge à l'utilisateur
read -p "Entrez l'âge d'un individu : " age

# Vérifier que l'entrée est un nombre
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Erreur : Veuillez entrer un nombre valide."
    exit 1
fi

# Déterminer la tranche d'âge
if [ "$age" -ge 0 ] && [ "$age" -le 18 ]; then
    echo "Âge : $age ans → Tranche : Enfant"
elif [ "$age" -ge 19 ] && [ "$age" -le 64 ]; then
    echo "Âge : $age ans → Tranche : Adulte"
elif [ "$age" -ge 65 ]; then
    echo "Âge : $age ans → Tranche : Senior"
else
    echo "Âge invalide : $age"
fi

# Test avec différentes valeurs
echo -e "\nExemples de test :"
test_ages=(5 18 19 25 64 65 80)

for test_age in "${test_ages[@]}"; do
    if [ "$test_age" -ge 0 ] && [ "$test_age" -le 18 ]; then
        tranche="Enfant"
    elif [ "$test_age" -ge 19 ] && [ "$test_age" -le 64 ]; then
        tranche="Adulte"
    elif [ "$test_age" -ge 65 ]; then
        tranche="Senior"
    else
        tranche="Invalide"
    fi
    echo "  Âge $test_age ans → $tranche"
done

echo "=== Fin du Script 2 ==="