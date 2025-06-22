# Commandes Linux utiles

## ls
Liste les fichiers dans un dossier.  

## ls -l
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

## cd (change directory)
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

## pwd 
Affiche le chemin du dossier actuel.  
Permet de savoir où on se trouve.

## chmod
Permet de modifier les permissions d’un fichier.

...
