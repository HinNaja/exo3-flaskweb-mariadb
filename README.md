# exo3-flaskweb-mariadb
exo3 du module Kubernetes

## Objectif
Déployer dans un cluster Kubernetes l'application Flask (python) dont le code source est situé dans le dossier src.  
Il s'agit d'une application web liée une base de données relationnelle.  
Nous utiliserons un serveur de base de données mariadb, version 10.  

Vous devrez:
- Ecrire le **Dockerfile** permettant de dockeriser l'application flask.
- Ecrire le **docker-compose.yaml** permettant de démarrer l'application avec deux services: un service web et un service mariadb.
- Publier l'image vers votre compte docker.
- Ecrire un **manifeste k8s exo3.yaml** permettant de déployer l'application en cluster.

## Tâches obligatoires
- L'application web (flask) devra être aisément "scalable".
- L'application mariadb ne sera pas sujette à redimensionnement horizontal. Elle donc peut se présenter comme un simple Pod.
- L'application web et l'application mariadb ne communiqueront qu'en interne au cluster.
- L'application web sera la seule à pouvoir recevoir des requêtes depuis l'extérieur du cluster.
- L'application mariadb sera liée à un volume persistant.
- Imposer des limites (valeurs au choix) de ressources pour les différents conteneurs.
- Placer toutes les ressources "namespacables" dans un namespace nommé **exo3**.

## Tache facultative
Associer un redimensionnement automatique à l'application web lui permettant de monter jusqu'à 8 pods lorsque l'utilisation moyenne des ressources cpu atteint 70%.
