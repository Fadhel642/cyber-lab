# Projet : audit_machine

## Objectif
Créer un script Bash qui effectue un petit audit technique d’une machine Linux.  
Le but est de rassembler automatiquement des informations utiles à la supervision ou au diagnostic.

---

## Fonctions du script `audit_machine.sh`

Le script réalise les opérations suivantes :

- **Affiche les infos système :**
  - Utilisateur connecté
  - Nom de la machine
  - Durée d’activité (uptime)
  - Version du noyau
- **Affiche la mémoire et l’espace disque**
- **Infos réseau :**
  - Adresse IP locale
  - Test de connexion (ping vers google.com)
- **Affiche les ports ouverts via `netstat`**
- **Génère un fichier `rapport_audit.txt`**
- **Crée une archive** `.tar.gz` avec le rapport (ex : `audit_2025-07-01_18-30.tar.gz`)

---

## Utilisation

```bash
chmod +x audit_machine.sh
./audit_machine.sh
  
