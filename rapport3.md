---
title: "Rapport SAE2.03"
authors:
  - LELEU Benjamin
  - Lecoester Martin
  - Stievenard Adam
lang: fr
date: 28 février 2025
output:
  html_document:
    css: style.css
toc_min_heading_level: 1
toc_max_heading_level: 4
---

## Rapport d'installation et de configuration de Gitea

###  Introduction

> Gitea est un service de gestion de code source basé sur Git qui sera installé à partir des binaires précompilés selon les consignes fournies dans la SAÉ 2.03. L'objectif est de mettre en place un système de gestion de versions fonctionnel et de réaliser plusieurs tests d'utilisation pour vérifier son bon fonctionnement.

###  Préliminaire : Redirection de port

> Avant d'installer Gitea, il est nécessaire de configurer la redirection de port pour pouvoir accéder au service web depuis la machine hôte.

#### Configuration dans VirtualBox

> Le mode réseau par défaut de notre machine virtuelle est NAT (Network Address Translation). Pour rediriger le port 3000 de la machine hôte vers le port 3000 de la machine virtuelle, j'ai suivi les étapes suivantes :

> 1. Arrêter la machine virtuelle
> 2. Accéder aux paramètres de la VM dans VirtualBox
> 3. Aller dans l'onglet "Réseau"
> 4. Cliquer sur "Avancé" puis "Redirection de ports"
> 5. Ajouter une nouvelle règle avec les paramètres suivants :
>     - Nom : Gitea
>     - Protocole : TCP
>     - IP hôte : vide (pour accepter toutes les connexions)
>     - Port hôte : 3000
>     - IP invité : vide (pour diriger vers l'adresse IP de la VM)
>     - Port invité : 3000

> Cette configuration permettra d'accéder à l'interface web de Gitea via l'adresse <http://localhost:3000> depuis le navigateur de la machine hôte.

### Recherches sur Gitea

####  Qu'est-ce que Gitea ?

> Gitea est une plateforme légère et auto-hébergée de gestion de code source basée sur Git. Il s'agit d'un service complet de gestion de dépôts Git qui inclut des fonctionnalités comme le suivi des problèmes (issues), la revue de code, l'intégration continue, et diverses autres fonctionnalités collaboratives.
> Gitea est écrit en Go, ce qui lui permet d'être léger et rapide. Il peut fonctionner sur des serveurs peu puissants et est compatible avec la plupart des systèmes d'exploitation.

#### Comparaison avec d'autres logiciels similaires

> Gitea peut être comparé à plusieurs autres logiciels de gestion de code source :
> 
> 1. **GitHub** : La plateforme de gestion de code source la plus populaire, appartenant à Microsoft. Contrairement à Gitea, GitHub est principalement une solution cloud, bien qu'il existe une version Enterprise pour le déploiement sur site.  
> 2. **GitLab** : Une alternative à GitHub qui offre à la fois des solutions cloud et des versions auto-hébergées. GitLab est plus complet que Gitea mais aussi plus lourd en termes de ressources.  
> 3. **Bitbucket** : Solution de gestion de code source d'Atlassian, disponible en cloud et en version serveur.  
> Gogs : Un logiciel très similaire à Gitea puisque ce dernier en est un fork.

#### Qu'est-ce qu'un fork dans le développement logiciel ?

> Un fork dans le développement logiciel est une copie d'un projet existant que des développeurs créent pour travailler indépendamment du projet original. Le fork part du code source original mais évolue ensuite séparément, bien que des contributions puissent parfois être partagées entre les deux projets.
> Un fork peut être créé pour diverses raisons :
> 
> - Pour développer des fonctionnalités que les mainteneurs du projet original ne souhaitent pas intégrer
> - En raison de désaccords sur la direction du projet
> - Pour adapter le projet à des besoins spécifiques
> - Pour reprendre un projet abandonné

#### De quel logiciel Gitea est-il le fork ?

> Gitea est un fork de Gogs (Go Git Service). Gogs existe toujours mais Gitea a connu un développement plus actif et bénéficie d'une communauté plus large. Gitea a été créé en 2016 par des contributeurs de Gogs qui souhaitaient une gouvernance plus communautaire pour le projet.

###  Installation de Gitea

> Suivant les instructions de la documentation officielle, nous avons procédé à l'installation de Gitea à partir des binaires précompilés.

#### Création d'un utilisateur dédié

> Il est recommandé de créer un utilisateur dédié pour exécuter Gitea :

```bash
sudo adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git
```

#### Création des répertoires nécessaires

> Nous avons créé les répertoires nécessaires pour l'installation et la configuration de Gitea :

```bash
sudo mkdir -p /var/lib/gitea/{custom,data,log}
sudo chown -R git:git /var/lib/gitea/
sudo chmod -R 750 /var/lib/gitea/
sudo mkdir /etc/gitea
sudo chown root:git /etc/gitea
sudo chmod 770 /etc/gitea
```

#### Téléchargement du binaire

> Nous avons téléchargé la dernière version stable de Gitea depuis le site officiel :

```bash
wget -O gitea <https://dl.gitea.io/gitea/1.23.0/gitea-1.23.0-linux-amd64>
sudo chmod +x gitea
sudo mv gitea /usr/local/bin/gitea
```

#### Création du fichier de service systemd

> Pour permettre à Gitea de fonctionner comme un service, nous avons créé un fichier de service systemd :

```bash
sudo nano /etc/systemd/system/gitea.service
```

> Avec le contenu suivant :

```bash
[Unit]
Description=Gitea (Git with a cup of tea)
After=network.target
After=mysql.service
After=postgresql.service
After=memcached.service
After=redis.service

[Service]
# Modify these two values and uncomment them if you have
# repos with lots of files and get an HTTP error 500 because
# of that
###
# LimitMEMLOCK=infinity
# LimitNOFILE=65535
RestartSec=2s
Type=simple
User=git
Group=git
WorkingDirectory=/var/lib/gitea/
ExecStart=/usr/local/bin/gitea web --config /etc/gitea/app.ini
Restart=always
Environment=USER=git HOME=/home/git GITEA_WORK_DIR=/var/lib/gitea
# If you want to bind Gitea to a port below 1024, uncomment
# the two values below, or use socket activation to pass Gitea its ports as privileges
###
# CapabilityBoundingSet=CAP_NET_BIND_SERVICE
# AmbientCapabilities=CAP_NET_BIND_SERVICE

[Install]
WantedBy=multi-user.target
```

#### Démarrage du service

> Nous avons ensuite activé et démarré le service Gitea :

```bash
sudo systemctl daemon-reload
sudo systemctl enable gitea
sudo systemctl start gitea
```

###  Configuration initiale

> Une fois Gitea installé et le service démarré, nous avons procédé à la configuration initiale via l'interface web accessible à l'adresse <http://localhost:3000>.

#### Paramètres de base de données

> Ensuite, nous avons configuré Gitea pour utiliser SQLite3 comme base de données :
> 
> - Type de base de données : SQLite3
> - Chemin : `/var/lib/gitea/data/gitea.db`

#### Paramètres généraux

> Pour les paramètres généraux, nous avons configuré :
> 
> - Nom du site : Gitea Service
> - URL du serveur : <http://localhost:3000/>
> - Chemin racine des dépôts : /var/lib/gitea/data/gitea-repositories

#### Création du compte administrateur

> Nous avons créé le compte administrateur :
> 
> - Nom d'utilisateur : gitea
> - Adresse e-mail : martin.lecoester.etu@univ-lille.fr
> - Mot de passe : gitea

#### Sécurisation des répertoires de configuration

> Après l'installation, nous avons sécurisé les répertoires de configuration :

```bash
sudo chmod 750 /etc/gitea
sudo chmod 640 /etc/gitea/app.ini
```

###  Tests d'utilisation

> Nous avons effectué plusieurs tests pour vérifier le bon fonctionnement de Gitea.

#### Création d'un nouveau projet via l'interface web

> Nous avons créé un nouveau dépôt appelé "test-project" directement depuis l'interface web de Gitea :
> 
> 1. Connexion avec le compte administrateur
> 2. Clic sur le bouton "+" puis "Nouveau dépôt"
> 3. Remplissage du formulaire avec :
>     - Nom du dépôt : test-project
>     - Description : Projet de test pour Gitea
>     - Visibilité : Privé
> 
> Clic sur "Créer le dépôt"

#### Création du dépôt "sae203-rapport" via l'interface web

##### Clonage du dépôt vide en local :

```bash
git clone <http://localhost:3000/gitea/sae203-rapport.git>
```

##### Ajout des fichiers du rapport :

```bash
git add .
```

##### Configuration de l'utilisateur Git :

```bash
git config --global user.email "martin.lecoester.etu"
git config --global user.name "Administrateur Gitea"
```

##### Commit et push des fichiers :

```bash
git add .
git commit -m "Ajout initial du rapport SAÉ 2.03"
git push origin main
```

##### Partage de codes sources et gestion des droits

> Pour tester le partage de code et la gestion des droits, nous avons :
> 
> 1. Créé deux utilisateurs supplémentaires ("user1" et "user2")
> 2. Créé un dépôt "tp-developpement" pour partager du code
> 3. Configuré les droits d'accès différents pour chaque utilisateur :
>     - user1 : Droits en lecture et écriture
>     - user2 : Droits en lecture seule


###### Tests effectués avec l'utilisateur "user1" (droits en écriture) :

> - Clonage réussi du dépôt
> - Création d'une branche
> - Ajout de fichiers et commit
> - Push vers le dépôt distant

###### Tests effectués avec l'utilisateur "user2" (droits en lecture seule) :

> - Clonage réussi du dépôt
> - Tentative de push (échec, comme prévu)
> - Vérification de l'erreur : "remote: User does not have write access"
> 
> Cette série de tests confirme que les droits d'accès sont correctement appliqués.

###  Mise à jour de Gitea

####  Version installée

> Pour connaître la version de Gitea installée, j'ai utilisé la commande :

```bash
gitea --version
```

> Résultat :

`Gitea version 1.23.0 built with GNU Make 4.3, go1.21.5 : bindata, sqlite, sqlite_unlock_notify`

#### Procédure de mise à jour

> Pour mettre à jour le binaire de Gitea sans reconfigurer l'installation, nous avons suivi les étapes suivantes :

##### Arrêt du service Gitea

```bash
sudo systemctl stop gitea
```

##### Sauvegarde du binaire existant

```bash
sudo mv /usr/local/bin/gitea /usr/local/bin/gitea.bak
```

##### Téléchargement de la version de développement 1.24-dev

```bash
wget -O gitea <https://dl.gitea.io/gitea/1.24.0-dev/gitea-1.24.0-dev-linux-amd64>
```

##### Application des permissions et déplacement du nouveau binaire

```bash
sudo chmod +x gitea
sudo mv gitea /usr/local/bin/gitea
```

##### Redémarrage du service

```bash
sudo systemctl start gitea
```

##### Vérification de la nouvelle version

```bash
gitea --version
```

> Résultat :

`Gitea version 1.24.0-dev built with GNU Make 4.3, go1.21.6 : bindata, sqlite, sqlite_unlock_notify`

> La mise à jour s'est déroulée avec succès. La nouvelle version est installée et fonctionne correctement. Comme on peut le constater, toutes les configurations précédentes ont été conservées car les fichiers de configuration sont stockés dans des répertoires séparés (/etc/gitea/ et /var/lib/gitea/) qui n'ont pas été modifiés lors de la mise à jour du binaire.

## Pour aller plus loin : CI/CD

### Qu'est-ce que l'intégration et la livraison continue ?

> Le CI et le CD sont des pratiques de développement logiciel qui visent à améliorer la qualité du code et à accélérer le déploiement des applications.  

Intégration Continue (CI)

:   C'est une pratique qui consiste à intégrer les modifications de code dans un dépôt central plusieurs fois par jour. Chaque intégration est vérifiée par des tests automatisés pour détecter rapidement les erreurs. L'objectif est de localiser et de résoudre les problèmes d'intégration le plus tôt possible dans le cycle de développement.  

Livraison Continue (CD)

:   C'est une extension de l'intégration continue qui automatise le processus de déploiement d'une application. Elle garantit que le code peut être rapidement et facilement déployé en production à tout moment. La livraison continue implique généralement des tests automatisés plus poussés et peut inclure des déploiements en environnement de test ou de préproduction.  

> Ensemble, CI/CD permet de :  
>     - Réduire les risques d'intégration
>     - Détecter les bugs plus tôt
>     - Accélérer le temps de mise sur le marché
>     - Améliorer la qualité du code
>     - Faciliter le travail d'équipe

###  Configuration CI/CD dans Gitea

> Gitea offre des fonctionnalités d'intégration et de livraison continues à travers Gitea Actions, qui est compatible avec GitHub Actions. Voici les étapes pour configurer un pipeline CI/CD simple pour un projet Java :

#### Activation de Gitea Actions dans le fichier de configuration /etc/gitea/app.ini :

```bash
[actions]
ENABLED = true
```

#### Redémarrage du service Gitea :

```bash
sudo systemctl restart gitea
```

#### Création d'un workflow dans le dépôt.  

> Nous avons créé un fichier .gitea/workflows/build.yml dans le dépôt "tp-developpement" avec le contenu suivant :

```yaml
name: Java CI

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
    - name: Set up JDK 17
      uses: actions/setup-java@v3
      with:
        java-version: '17'
        distribution: 'adopt'
    - name: Build with Maven
      run: mvn -B package --file pom.xml
    - name: Run tests
      run: mvn test
```

#### Test du workflow :

> - Ajout d'un projet Java simple dans le dépôt
> - Vérification du déclenchement automatique du workflow après un push
> - Observation du résultat dans l'onglet "Actions" de Gitea
> 
> Ce workflow vérifie automatiquement que le code Java peut être compilé et que tous les tests passent à chaque fois qu'un commit est poussé sur la branche principale ou qu'une pull request est créée.