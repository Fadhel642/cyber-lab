# 🧑‍💻 Commandes Linux
---

> 🗒️ **Note perso** : Je sais qu’il existe plein de sites et docs avec toutes les commandes Linux, et que je pourrais juste aller chercher sur Google… mais j’ai choisi de faire ce document moi-même. Pourquoi ? Parce que ça m’aide à mieux comprendre, à m’en souvenir, et à me sentir plus à l’aise avec ces commandes.
>   
> Je suis encore en plein apprentissage, donc ce fichier n’est pas terminé. Je le complète petit à petit, à mon rythme. Et même si ce n’est pas parfait, ça me permet de progresser.

---

## 📑 Sommaire :
### 🔹Éditeurs de texte

- [nano](#nano)

### 🔹Affichage & Entrées

- [echo](#echo)

### 🔹Manipulation de fichiers
- [ls](#ls-list)  
- [cd](#cd-change-directory)
- [pwd](#pwd-print-working-directory)
- [mkdir](#mkdir-make-directory)
- [mv](#mv-move)
- [cp](#cp-copy)
- [rm](#rm-remove)
- [touch](#touch-update-timestamp--create-empty-file)

### 🔹Lecture et traitement de fichiers
- [awk](#awk-aho-weinberger-kernighan)
- [cat](#cat-concatenate)
- [head](#head-show-beginning)
- [tail](#tail-show-end)
- [wc](#wc-word-count)
- [grep](#grep-global-regular-expression-print)

### 🔹Droits et permissions

- [chmod](#chmod-change-mode)
- [chown](#
- [umask](#

### 🔹Surveillance système et processus

- [whoami](#whoami)
- [uptime](#uptime)
- [hostname](#hostname)
- [free](#free)
- [date](#date)

### 🔹Réseau

- [ping](#ping-packet-internet-groper)  
- [wget](#wget-web-get)  
- [curl](#curl-client-url)
- [netstat](#netstat-network-statistics)
- [nslookup](#nslookup-Name-Server-Lookup)
- [host](#host)
- [whois](#whois)
- [traceroute](#traceroute)
- [ifconfig](#ifconfig)
- [iwconfig](#iwconfig)
- [arp](#arp-Address-Resolution-Protocol)
- [route](#route)

### 🔹Recherche et exploration

- [find](#
- [locate](#
- [lsof](#

### 🔹Archivage / Compression

- [tar](#
- gzip / gunzip

### 🔹Historique et automatisation

- [history](#history-command-history)
- alias
- watch

### 🔹Symbole / Opérateur

- [&](#&-Operator-&)
- [&&]
- [>]
- [>>]
  
--- 

## `echo`

Cette commande sert à afficher du texte à l’écran, ou à montrer la valeur d’une variable.

****Utilisations :****

| Objectif                          | Commande                      | Résultat / Description             |
| --------------------------------- | ----------------------------- | ---------------------------------- |
| Afficher un texte simple          | `echo Hello`                  | Affiche "Hello"                    |
| Afficher la valeur d’une variable | `echo $HOME`                  | Affiche ton dossier utilisateur    |
| Créer un fichier avec du texte    | `echo "Hello" > fichier.txt`  | Écrit "Hello" dans `fichier.txt`   |
| Ajouter du texte à un fichier     | `echo "Suite" >> fichier.txt` | Ajoute "Suite" à la fin du fichier |
| Afficher une ligne vide           | `echo`                        | Affiche une ligne vide             |

---

## `nano`

`nano` est un éditeur de texte qui fonctionne directement dans le terminal.
Il permet de créer, lire ou modifier des fichiers texte (comme des scripts, du code, ou des fichiers de config).

 ****Commandes utiles dans nano :****

| Action                     | Raccourci clavier |
| -------------------------- | ----------------- |
| Enregistrer                | `Ctrl + O`        |
| Quitter                    | `Ctrl + X`        |
| Couper une ligne           | `Ctrl + K`        |
| Coller une ligne           | `Ctrl + U`        |
| Rechercher dans le fichier | `Ctrl + W`        |

---

## `ls` (list)
Cette commande permet de lister les fichiers et dossiers dans le répertoire courant  

## `ls -l`
Liste détaillée des fichiers  
`ls` = liste les fichiers  
`-l` (long) = il affiche les fichiers avec plus d’informations :  

**Exemple**  

![image](https://github.com/user-attachments/assets/b6473c5d-afed-4cac-b2ce-f7edab82cf16)  

### Décryptage de la sortie  
| Élément | Description |
|--------|-------------|
| `drwxr-xr-x` | Type et permissions |
| `1` | Nombre de liens |
| `1224RASP52+crif` | Nom de Propriétaire |
| `197121` | Groupe |  
| `0` | Taille (en octets) |  
| `Oct 24 2024` | Date de dernière modification |
| `AppData/` | Nom du dossier |

****Autres exemples utiles :****  

| Commande     | Explication                                                 |
| ------------ | ----------------------------------------------------------- |
| `ls -a`      | Affiche tous les fichiers, y compris les fichiers cachés    |
| `ls -lh`     | Affiche les tailles dans un format lisible (Ko, Mo...)      |
| `ls -la`     | Combine `-l` et `-a` pour un affichage détaillé complet     |
| `ls /chemin` | Liste le contenu d’un autre dossier                         |


---

## `cd` (change directory)
Cette commande permet de naviguer entre les dossiers dans le système de fichiers.

**Exemple** : ( utilisation de `cd` pour aller dans le dossier `Music`, puis vérification avec `pwd`)  

![image](https://github.com/user-attachments/assets/c626b838-e181-4ca8-8e3a-f26570744b0c)  

****Autres exemples utiles :****  

| Commande             | Explication                                 |
| -------------------- | ------------------------------------------- |
| `cd ..`              | Revenir au dossier parent                   |
| `cd /`               | Aller à la racine du système                |
| `cd ~`               | Aller au dossier personnel de l'utilisateur |
| `cd` (sans argument) | Même chose que `cd ~`                       |
| `cd -`               | Retourner au dossier précédent              |


---

## `pwd` ((print working directory) 
Affiche le chemin du dossier actuel.  
Permet de savoir où on se trouve.

---

## `mkdir` (make directory)

Cette commande permet tout simplement de créer un ou plusieurs dossiers  

**Exemple** : ( utilisation de `mkdir` pour céer un dossier nommé `test`  

![image](https://github.com/user-attachments/assets/1a395f8a-fdd4-49f6-97fb-589b0457d2eb)
  
  
Le dossier test apparaît bien dans le dossier Musique, comme visible ci-dessous :  

![image](https://github.com/user-attachments/assets/b169c52f-03af-4197-ae87-c3b0d4c16c31)  


****Autres exemples utiles :****  

| Commande                     | Explication                                               |
| ---------------------------- | --------------------------------------------------------- |
| `mkdir test1 test2`          | Crée plusieurs dossiers en une seule commande             |
| `mkdir -p dossier1/dossier2` | Crée une arborescence (et les dossiers parents si besoin) |

----

## `mv` (move)

Cette commande permet de **déplacer** ou **renommer** des fichiers et des dossiers.  

| Commande                         | Explication                                       |
| -------------------------------- | ------------------------------------------------- |
| `mv fichier.txt dossier/`        | Déplace un fichier dans un dossier                |
| `mv dossier1/ dossier2/`         | Déplace un dossier dans un autre                  |
| `mv fichier.txt nouveau_nom.txt` | Renomme le fichier                                |
| `mv -i fichier.txt dossier/`     | Affiche un message si un fichier doit être écrasé |
| `mv *.txt Archives/`             | Déplace tous les fichiers `.txt` vers `Archives`  |

---

## `clear` (clear screen)

Cette commande permet de nettoyer l’écran du terminal. Elle efface tout le contenu affiché à l'écran, **sans supprimer** les données ou les fichiers.

---

## `cp` (copy)

Cette commande permet de copier des fichiers ou des dossiers d’un emplacement vers un autre.  
Elle peut être utiliser comme un **sauvegarde**  

****Options utiles :****

| Option | Description                                     |
| ------ | ----------------------------------------------- |
| `-r`   | Copie un dossier **et son contenu**             |
| `-i`   | Demande confirmation avant d’écraser un fichier |
| `-v`   | Affiche chaque fichier copié ("verbose")        |

---

## `rm` (remove)

Cette commande permet de supprimer des fichiers ou des dossiers depuis le terminal.  
> ATTENTION : les fichiers supprimés avec `rm` ne vont pas dans la corbeille. **C’est irréversible**.

****Options utiles :****

| Option | Description                                        |
| ------ | -------------------------------------------------- |
| `-r`   | Supprime un dossier et son contenu (récursif)      |
| `-f`   | Forcer la suppression, sans erreur ni confirmation |
| `-i`   | Demande confirmation avant suppression             |
| `-rf`  | Forcer la suppression sans message                 |

---

## `touch` (update timestamp / create empty file)

Cette commande sert à créer un **fichier vide** ou à **mettre à jour la date** de modification d’un fichier existant.

---

## `awk` (Aho Weinberger Kernighan) 

Cette commande sert à analyser, filtrer et formater des données ligne par ligne, souvent utilisées avec des fichiers textes ou des sorties de commande.
> C’est parfait pour traiter des données en colonnes, comme des fichiers .csv, .log, etc.

**Syntaxe de base :**
```
awk 'pattern {action}' fichier
```
**Exemple simple : afficher une colonne**
```
awk '{print $1}' fichier.txt
```
**Explication :**
`$1` = première colonne
`$2` = deuxième colonne
`$0` = toute la ligne

****Autres utilisations utiles****

| Action                      | Commande                             |
| --------------------------- | ------------------------------------ |
| Afficher 1re et 2e colonne  | `awk '{print $1, $2}' fichier.txt`   |
| Compter le nombre de lignes | `awk 'END {print NR}' fichier.txt`   |
| Ajouter du texte            | `awk '{print ">>", $1}' fichier.txt` |

---

## `cat` (concatenate)

Cette commande permet de **lire**, **afficher**, **fusionner** ou **créer** des fichiers texte directement depuis le terminal.  
petite **remarque** : lorsqu'on crée un fichier texte exemple :  `cat > nouveau.txt` il te laisse écrire et Quand tu as fini, tu fais Ctrl + D pour enregistrer.

---

## `head` (show beginning)

Cette commande permet d’afficher les premières lignes d’un fichier texte.
Par défaut, elle montre les 10 premières lignes.

****Autres options utiles :****

| Option | Description                                          |
| ------ | ---------------------------------------------------- |
| `-n N` | Affiche les **N premières lignes**                   |
| `-q`   | N’affiche **pas le nom des fichiers** (si plusieurs) |
| `-v`   | Affiche **toujours** le nom du fichier               |

---

## `tail` (show end)

Cette commande permet d’afficher les dernières lignes d’un fichier texte.
Par défaut, elle affiche les 10 dernières lignes.

****Autres options utiles :****

| Option | Description                        |
| ------ | ---------------------------------- |
| `-n N` | Affiche les **N dernières lignes** |
| `-f`   | Suit le fichier en **temps réel**  |
| `-q`   | Masque le nom du fichier           |

---

## `whoami`

Cette commande affiche le nom d’utilisateur actuellement connecté au système.

****Autre commandes similaires :****

| Commande     | Description                             |
| ------------ | --------------------------------------- |
| `who`        | Affiche tous les utilisateurs connectés |
| `id`         | Donne l’ID utilisateur + groupes        |
| `echo $USER` | Affiche l’utilisateur courant (bash)    |

---

## `uptime`

Cette commande affiche depuis combien de temps ton système est allumé, ainsi que le nombre d’utilisateurs connectés et la charge système.

---

## `hostname`

Cette commande affiche le nom de l’ordinateur (appelé "hôte") sur le réseau.
> C’est ce nom qui identifie ta machine localement ou dans un réseau.

---

## `free`

Cette commande affiche un résumé de l’utilisation de la mémoire vive (RAM) et de la swap de ton système.

**Exemple**
```
free
```
Résultat

![image](https://github.com/user-attachments/assets/f9cbe066-081c-4a12-ac4c-410e6c6ddc25)

**Explication des colonnes :**
| Colonne      | Signification                                             |
| ------------ | --------------------------------------------------------- |
| `total`      | Quantité totale de mémoire                                |
| `used`       | Mémoire utilisée actuellement                             |
| `free`       | Mémoire complètement libre (pas utilisée du tout)         |
| `shared`     | Mémoire partagée entre processus                          |
| `buff/cache` | Mémoire utilisée pour les buffers et caches               |
| `available`  | Mémoire disponible réellement pour de nouveaux programmes |

**Affichage plus lisible :**
```
free -h
```
Le `-h` affiche la taille en format lisible : **Mo**, **Go**, etc.  
Exemple :
![image](https://github.com/user-attachments/assets/592ab5fd-0ff4-4626-9b8b-93765b9d42c7)

---

## `date`

Cette commande affiche la date et l’heure système actuelles.  
Elle peut aussi servir à formater la date selon tes besoins, ou à l’utiliser dans des scripts.

**exemples**
```
date "+%H:%M:%S"    # Heure uniquement
date "+%A %d %B %Y" # Affiche le jour, la date complète
```

**Quelques codes de format utiles :**

| Code | Signification            |
| ---- | ------------------------ |
| `%d` | Jour (numérique)         |
| `%m` | Mois (numérique)         |
| `%Y` | Année (4 chiffres)       |
| `%H` | Heure (24h)              |
| `%M` | Minute                   |
| `%S` | Seconde                  |
| `%A` | Nom du jour (ex. samedi) |
| `%B` | Nom du mois (ex. juin)   |


---

## `wget` (web get)

Cette commande permet de **télécharger un fichier depuis Internet**, directement depuis le terminal, sans navigateur.  
Elle est équivalente à la commande `curl -O`

---

## `curl` (client URL)

Cette commande permet de récupérer ou envoyer des données via HTTP, HTTPS, FTP, etc.  
Elle est très utilisée pour télécharger des fichiers, tester des API, ou envoyer des requêtes web.

****Autres options utiles :****

| Option    | Description                                            |
| --------- | ------------------------------------------------------ |
| `-O`      | Garde le nom de fichier distant                        |
| `-o nom`  | Spécifie un nom local pour le fichier                  |
| `-L`      | Suit les redirections (important pour les vraies URLs) |
| `-I`      | N'affiche que les en-têtes HTTP                        |
| `-X POST` | Envoie une requête POST                                |
| `-d`      | Envoie des données (utile avec POST/PUT)               |

---

## `ping` (packet internet groper)

Cette commande permet de tester la connexion entre ton ordinateur et une autre machine (souvent un serveur ou un site web).  
Elle envoie des paquets **ICMP** (**I**nternet **C**ontrol **M**essage **P**rotocol) et mesure le temps de réponse.

**Exemple :**
```ping google.com```  
Envoie des paquets vers Google et affiche les réponses reçues + le temps en millisecondes  

![image](https://github.com/user-attachments/assets/eb34150b-4da7-4579-b748-45178d16347c)

time=!! ms = temps que met le paquet à faire l’aller-retour  
S'il y a des pertes, cela indique une connexion instable ou rompue

****Utilisations utiles :****

| Cas d’usage                   | Exemple                                     |
| ----------------------------- | ------------------------------------------- |
| Tester une URL                | `ping example.com`                          |
| Tester une IP spécifique      | `ping 8.8.8.8`                              |
| Vérifier la latence réseau    | Lire les valeurs `time=...`                 |
| Vérifier si un serveur répond | S’il ne répond pas, aucun paquet ne revient |

---

## `netstat` (network statistics)

Cette commande affiche des informations sur les connexions réseau, les ports ouverts, et les statistiques du protocole réseau (TCP, UDP…).

****Utilisations utiles :****

| Objectif                                | Commande         | Description                                    |
| --------------------------------------- | ---------------- | ---------------------------------------------- |
| Voir toutes les connexions TCP          | `netstat -at`    | Affiche uniquement les connexions TCP          |
| Voir tous les ports en écoute           | `netstat -l`     | Montre les services en attente de connexion    |
| Voir avec les numéros de port           | `netstat -n`     | Affiche les IP/ports sans résolution DNS       |
| Voir les programmes liés aux connexions | `netstat -tulpn` | (Linux) Affiche les processus + ports utilisés |

---

## `nslookup` (Name Server Lookup)

Cette commande permet d’interroger le DNS pour obtenir des informations sur un nom de domaine ou une adresse IP.  
Très utile pour vérifier la résolution DNS d’un domaine.

> **DNS** (Domain Name System) : C’est un service d’annuaire d’Internet, il fait la traduction entre un ***nom de domaine*** et une ***adresse IP***.

---

## `host`

Cette commande permet d’interroger le DNS pour obtenir des informations sur un ***nom de domaine***, comme son adresse IP, ses serveurs mail, etc.

Elle est ***plus simple et rapide*** que `nslookup`.

****Autres usages :****

| Cas d’usage                              | Commande                   | Description                                      |
| ---------------------------------------- | -------------------------- | ------------------------------------------------ |
| Voir l’adresse IP d’un domaine           | `host openai.com`          | Donne l’adresse IPv4 et IPv6                     |
| Voir les serveurs mail (MX)              | `host -t mx gmail.com`     | Affiche les serveurs qui reçoivent les emails    |
| Voir les serveurs de noms (NS)           | `host -t ns wikipedia.org` | Affiche les serveurs DNS responsables du domaine |
| Vérifier un type précis d’enregistrement | `host -t A example.com`    | Pour ne voir que l’IP v4 (type A)                |

> **Les principaux types d’enregistrements DNS :**
>
> | Type    | Que signifie-t-il ? | À quoi ça sert ?                                                   |
> | ------- | ------------------- | ------------------------------------------------------------------ |
> | `A`     | **Adresse IPv4**    | Associe un nom de domaine à une adresse IPv4 (ex: `93.184.216.34`) |
> | `AAAA`  | **Adresse IPv6**    | Comme `A`, mais pour une adresse IPv6 (ex: `2606:2800:...`)        |
> | `MX`    | **Mail Exchange**   | Indique les serveurs qui gèrent les **emails** pour le domaine     |
> | `NS`    | **Name Server**     | Indique les **serveurs DNS** responsables du domaine               |
> | `CNAME` | **Canonical Name**  | Redirige un nom de domaine vers un **autre nom de domaine**        |
> | `TXT`   | **Texte libre**     | Sert à stocker des infos comme SPF, vérifs Google, sécurité, etc.  |

---

## `whois`

Cette commande permet de consulter ***les informations d’enregistrement*** d’un nom de domaine ou d’une adresse IP.  
C’est comme un casier d’identité du domaine : on peut savoir qui possède un site, quand il a été créé, quand il expire, etc.

---

## `traceroute`

Cette commande permet de voir le chemin réseau qu’empruntent les paquets pour atteindre une destination (comme un site web).  
Elle montre chaque "saut" (routeur ou serveur) traversé entre ta machine et la cible.

**Syntaxe**
```
traceroute adresse_ou_nom_de_domaine
```
---
## `ifconfig`

C'est similaire à la commande windows `ipconfig`. Elle affiche des détails
- Réseau de base tels que les adresses IP, l'adresse de diffusion, l'adresse MAC, et bien plus encore.

---
## `iwconfig`

C'est similaire à la commande `ifconfig`. Elle est plus axée uniquement sur les interfaces réseau sans fil.

---
## `arp` (Address Resolution Protocol)
Il est utilisé pour trouver les correspondances IP vers adresse MAC.

---
## `route`
Il récupère la table de routage. Cela indique essenteillement où tout le réseau est réellement dirigé.

---
## `grep` (global regular expression print)

Cette commande permet de rechercher un texte spécifique dans un ou plusieurs fichiers, ou dans une sortie de commande.  

C’est un peu le **Ctrl + F** du terminal, mais en beaucoup plus puissant.  

```
grep [options] "mot_à_chercher" fichier
```
**Options :**

| Option         | Description                           |
| -------------- | ------------------------------------- |
| `-i`           | Ignore la casse                       |
| `-n`           | Affiche le numéro de ligne            |
| `-r`           | Recherche récursive dans les dossiers |
| `--color=auto` | Met le texte trouvé en couleur        |

---

## `wc` (word count)

Cette commande permet de compter le nombre de lignes, de mots et de caractères dans un ou plusieurs fichiers.  

**Options utiles :**

| Option | Description                       |
| ------ | --------------------------------- |
| `-l`   | Compte les lignes                 |
| `-w`   | Compte les mots                   |
| `-c`   | Compte les octets (taille brute)  |
| `-m`   | Compte les **caractères** (UTF-8) |

---

## `chmod` (change mode)
Cette commande permet de modifier les permissions d’un fichier.
pas encore fini !!!


---

## `history` (command history)

Cette commande affiche la liste des commandes précédemment exécutées dans le terminal.

**Options utiles :**

| Option | Description                        |
| ------ | ---------------------------------- |
| `-c`   | Efface l’historique                |
| `!n`   | Exécute la commande numéro `n`     |
| `!!`   | Réexécute **la dernière commande** |

---

## `&` (Operator &)
...
