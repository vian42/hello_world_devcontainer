# TLDR
Ce projet est un hello-world aillant pour but de mettre en place un environement de developpement utilisant un devcontainer.

Le projet est en kotlin , compilé avec gradle.

## Objectif

Mon but est d'avoir un environement de développement utilisant des outils de living documentation, à savoir:
* le devcontainer : dont le but est de réaliser la mise en place des dépendances, ce qui permer de réduire cette page de wiki "intalation du poste de dev"
* mask : qui permet de partager les commandes utile du projet, que nous avons souvant dans un note.txt et que nous partageons petit à petit avec les nouveaux arrivant.

## Mise en place

* les devcontainer fonctionnent avec linux, donc pour travailler avec Windows il est nécessaire d'intaller WSL
* Le projet a été testé avec VsCode. le support des devcontainers avec IntelliJ nécessite la version ultimate (encore non testé avec ce projet)
* pull le projet

Pour VsCode:
* dans le dossier du projet ouvrir l'IDE ( commande `code .`)
* utiliser l'action "Dev Container : build and open in container" /!\ le premier build prendra du temps pour le build de l'image Docker et la mise en place du wrapper graddle 
* Les commandes utilisable du projet sont présenté dans le fichier [maskfile.md](maskfile.md)

## Reste à faire
* /!\  Utilisable seulement pour un environement de dev, la container étant lancé avec l'utilisateur root, il faut gérer ce problème d'utilisateur
* Vérifier la compatibilité avec IntelliJ Ultimate
* Ajouter des contraintes, dépendances et autres simulations de situations réelles


