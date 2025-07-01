#!/bin/bash

# Script : sauvegarde_home.sh
# Objectif : Sauvegarder le dossier personnel dans une archive compressée

mkdir -p ~/sauvegardes   # Créer le dossier de destination

DATE=$(date +%F_%H-%M-%S)                # Date et heure au format AAAA-MM-JJ_HH-MM-SS
FILENAME="home_backup_$DATE.tar.gz"    # Créer le nom du fichier de sauvegarde

# Créer un archive compressé du dossier personnel, en excluant le dossier sauvegardes
tar -czf ~/sauvegardes/$FILENAME --exclude=$HOME/sauvegardes $HOME

echo "Sauvegarde créée : $FILENAME"  # Affiche un message de confirmation
