#!/bin/bash

# Script : audit_machine.sh
# Objectif : Effectuer un audit simple d'une machine Linux 

# 1- Créer le fichier de rapport
rapport="rapport_audit.txt"
echo "Rapport d'audit généré le $(date)" > $rapport

# 2- Informations système
echo -e "\n[Infos système]" >> $rapport
echo "Utilisateur     : $(whoami)" >> $rapport
echo "Nom de la machine : $(hostname)" >> $rapport
echo "Uptime          : $(uptime -p)" >> $rapport
echo "Version noyau   : $(uname -r)" >> $rapport

# 3- Mémoire et disque
echo -e "\n[Mémoire et disque]" >> $rapport
free -h >> $rapport
df -h >> $rapport
