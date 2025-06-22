# Exercice : Utilisation de la commande `mv`

## Objectif
Renommer et déplacer un dossier dans un autre dossier à l’aide de la commande `mv`.  

---

## Consignes :

1) Crée un dossier nommé `test`
2) Crée un fichier vide nommé `note.txt` dans ce dossier
3) Crée un dossier nommé `Documents` (s’il n’existe pas)
4) Déplace le dossier `test` dans le dossier `Documents`
5) Va dans le dossier `Documents/test`, puis renomme le fichier `note.txt` en `rapport.txt`

## Tu réussis l’exercice si :

- Le dossier `test` se trouve maintenant dans `Documents`
- Le fichier `note.txt` a été renommé en `rapport.txt` à l’intérieur

---

# Ma solution : 

> **Attention** : cette solution peut contenir des erreurs, car je la rédige moi-même ( en apprentissage ).

1) D'abord je crée un dossier que j’appelle `test` avec la commande `mkdir`

  ![image](https://github.com/user-attachments/assets/3cec85b6-49f6-46a3-81fd-514d9ea68e60)

---
2) Ensuite, j’entre un fichier vide dedans avec la commande `touch`, et je le nomme `note.txt`.
    
   ![image](https://github.com/user-attachments/assets/b7ac26bc-c1f6-405d-b566-4a37ab2c95f5)  
   Et je fais un petit `ls test` pour voir si `note.txt` est bien créé dedans.  
   ![image](https://github.com/user-attachments/assets/e583c436-4398-47a3-b92f-2e9c8bd3fe71)

---
3) Après ça, je vérifie si le dossier `Documents` existe, sinon je le crée. Perso je sais que je ne l'ai pas mais je vais utilser `-p` pour éviter une erreur s’il existe déjà

   ![image](https://github.com/user-attachments/assets/f1662f7e-3205-4951-b7ee-232db2cec608)

---
4) Maintenant, je peut déplacer le dossier `test` dans `Documents`, en utilisant la commande `mv`.

   ![image](https://github.com/user-attachments/assets/950f0ed6-6574-40c9-97f3-1c8618d36bf5)

---
5) Puis je vais dans le dossier `Documents/test` avec la commande `cd`, puis jee renomme le fichier `note.txt` en `rapport.txt`.

   ![image](https://github.com/user-attachments/assets/ce83a2a6-a859-4282-853e-526a81f3c1b4)
   ![image](https://github.com/user-attachments/assets/ab65396e-a02d-4af5-b31a-5fbdbf7bfd92)

---
# Remarque

J’ai vu que si je ne suis pas dans le bon dossier, ça fait une erreur de ce genre:  

![image](https://github.com/user-attachments/assets/ea2f1821-5f4a-4314-aad2-ed648bcf66c0)







