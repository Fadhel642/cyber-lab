# Commandes Linux utiles
---

> **Note perso** : Je sais qu’il existe plein de sites et docs avec toutes les commandes Linux, et que je pourrais juste aller chercher sur Google… mais j’ai choisi de faire ce document moi-même. Pourquoi ? Parce que ça m’aide à mieux comprendre, à m’en souvenir, et à me sentir plus à l’aise avec ces commandes.
>   
> Je suis encore en plein apprentissage, donc ce fichier n’est pas terminé. Je le complète petit à petit, à mon rythme. Et même si ce n’est pas parfait, ça me permet de progresser. Bref, ce doc, c’est un peu mon carnet de bord Linux

---

## Sommaire :

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
- [cat](#cat-concatenate)
- [head](#head-show-beginning)
- [tail](#tail-show-end)
- [wc](#wc-word-count)
- [grep](#grep-global-regular-expression-print)

### 🔹Droits et permissions

- [chmod](#
- [chown](#
- [umask](#

### 🔹Surveillance système et processus

- [](#
- [](#
- [](#
- [](#

### 🔹Réseau

- [ping](#ping-packet-internet-groper)  
- [wget](#wget-web-get)  
- [curl](#curl-client-url)
- netstat / ss !!!!

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
Elle envoie des paquets (ICMP) et mesure le temps de réponse.

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

---

## `history` (command history)

Cette commande affiche la liste des commandes précédemment exécutées dans le terminal.

**Options utiles :**

| Option | Description                        |
| ------ | ---------------------------------- |
| `-c`   | Efface l’historique                |
| `!n`   | Exécute la commande numéro `n`     |
| `!!`   | Réexécute **la dernière commande** |


...
