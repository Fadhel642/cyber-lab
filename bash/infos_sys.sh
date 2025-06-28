#!/bin/bash
# Script : infos_sys.sh
# Objectif : afficher les informations système de base

echo -e "\e[34m=== Infos système ===\e[0m"
echo "Utilisateur : $(whoami)"
echo "Nom de la machine : $(hostname)"
