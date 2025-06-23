# Commandes Linux utiles

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

## cp (copy)

Cette commande permet de copier des fichiers ou des dossiers d’un emplacement vers un autre.  
Elle peut être utiliser comme un **sauvegarde**  

****Options utiles :****

| Option | Description                                     |
| ------ | ----------------------------------------------- |
| `-r`   | Copie un dossier **et son contenu**             |
| `-i`   | Demande confirmation avant d’écraser un fichier |
| `-v`   | Affiche chaque fichier copié ("verbose")        |


## `chmod`
Permet de modifier les permissions d’un fichier.

...
