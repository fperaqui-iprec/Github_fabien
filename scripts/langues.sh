# Script 1 : Tableau des langues
# TP2 GitHub Actions

echo "=== SCRIPT 1 : GESTION D'UN TABLEAU DE LANGUES ==="
echo ""

# ÉTAPE 1 : Créer un tableau avec 6 langues de mon choix
echo "ÉTAPE 1 : Création du tableau avec 6 langues"
langues=("Français" "Anglais" "Espagnol" "Allemand" "Italien" "Portugais")

# ÉTAPE 2 : Afficher le contenu du tableau
echo "ÉTAPE 2 : Affichage du contenu du tableau"
echo "Tableau complet :"
for i in "${!langues[@]}"; do
    echo "  Indice $i : ${langues[$i]}"
done
echo ""

# ÉTAPE 3 : Afficher le deuxième élément du tableau
echo "ÉTAPE 3 : Affichage du deuxième élément"
echo "Le deuxième élément (indice 1) est : ${langues[1]}"
echo ""

# ÉTAPE 4 : Remplacer le 3ème élément par une nouvelle langue
echo "ÉTAPE 4 : Remplacement du troisième élément"
echo "Avant modification : ${langues[2]}"
langues[2]="Arabe"  # Nouvelle langue qui n'est pas dans le tableau
echo "Après modification : ${langues[2]}"
echo ""

# ÉTAPE 5 : Afficher le nouveau tableau mis à jour
echo "ÉTAPE 5 : Affichage du tableau mis à jour"
echo "Nouveau tableau :"
for i in "${!langues[@]}"; do
    echo "  Indice $i : ${langues[$i]}"
done
echo ""

# ÉTAPE 6 : Rajouter une 7ème langue au tableau
echo "ÉTAPE 6 : Ajout d'une 7ème langue"
langues+=("Japonais")
echo "Nouvelle langue ajoutée : ${langues[6]}"
echo ""

# ÉTAPE 7 : Réafficher de nouveau le tableau
echo "ÉTAPE 7 : Affichage final du tableau"
echo "Tableau final avec 7 langues :"
for i in "${!langues[@]}"; do
    echo "  Langue $((i+1)) : ${langues[$i]}"
done
echo ""

echo "=== FIN DU SCRIPT ==="
