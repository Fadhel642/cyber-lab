# Introduction aux bases du réseau 

Ce document explique les bases du réseau de façon simple, pour comprendre comment les ordinateurs communiquent entre eux.

---

## 1. Qu’est-ce qu’une adresse IP ?

L’**adresse IP** est comme l’adresse postale d’un ordinateur dans un réseau. Elle permet de **l’identifier et de le localiser** pour lui envoyer des données.

Exemples :
- IP privée : `192.168.1.20` → utilisée dans ton réseau local (maison, bureau…)
- IP publique : `213.245.16.38` → visible sur Internet

 Chaque appareil dans un réseau a une **adresse IP unique**.

---

## 2. Qu’est-ce qu’un port ?
Un **port**, c’est comme **une porte** spécifique sur un ordinateur qu’un logiciel utilise pour **envoyer ou recevoir des données**.

Exemple :
- L'adresse IP = le bâtiment
- Le port = la pièce dans laquelle tu veux entrer

Exemples de ports :
| Port | Utilisation | Service         |
|------|-------------|------------------|
| 22   | Connexion sécurisée à distance | SSH  |
| 80   | Navigation web non sécurisée   | HTTP |
| 443  | Navigation web sécurisée       | HTTPS |
| 21   | Transfert de fichiers          | FTP  |

---

## 3. Protocoles TCP et UDP

Un **protocole** est une règle pour communiquer.

### TCP (Transmission Control Protocol)

- Envoie les données **avec vérification** (fiable)
- Si une partie est perdue, elle est renvoyée
- Comme une **lettre recommandée**

 Exemple : sites web, connexion SSH

---

### UDP (User Datagram Protocol)

- Envoie rapide, **sans vérification**
- Moins fiable, mais plus rapide
- Comme un **message oral** -> s’il est perdu, tant pis

Exemple : vidéos en streaming, appels vidéo, jeux en ligne

---

## Exemple dans la vie réelle

Imaginons :
- Tu fais un appel vidéo WhatsApp (UDP)
- Si une image saute, ce n’est pas grave, l’appel continue

Mais si tu te connectes à ton serveur (SSH via TCP), il **faut** que chaque commande arrive **correctement**, sinon le système peut planter.

---

## À retenir

| Élément | Sert à quoi ?              |
|---------|----------------------------|
| Adresse IP | Identifier une machine |
| Port       | Spécifier un service   |
| TCP/UDP    | Choisir comment communiquer |


---
