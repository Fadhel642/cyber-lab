#!/bin/bash

# Script : audit_machine.sh
# Objectif : Effectuer un audit simple d'une machine Linux 

# 1- Créer le fichier de rapport
rapport="rapport_audit.txt"
echo "Rapport d'audit généré le $(date)" > $rapport
