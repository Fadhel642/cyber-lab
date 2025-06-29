#!/bin/bash
# Script : infos_sys.sh
# Objectif : afficher les informations système de base

echo -e "\e[34m=== Infos système ===\e[0m"
echo "Utilisateur : $(whoami)"
echo "Machine : $(hostname)"
echo "Uptime : $(uptime -p)"
echo "Mémoire utilisée : $(free -h | grep Mem | awk '{print $3 " / " $2}')"
echo "Charge CPU : $(uptime | awk -F'load average: ' '{print $2}')"
echo "Adresse IP locale : $(hostname -I | awk '{print $1}')"
