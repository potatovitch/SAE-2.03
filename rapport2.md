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

## Analyse préliminaire de git et des outils graphiques associés

![ ](https://git-scm.com/images/logos/downloads/Git-Logo-2Color.png)

### Les interfaces graphiques pour git

#### Qu'est-ce que le logiciel gitk ? Comment se lance-t-il ?

> Gitk est un outil de visualisation graphique intégré avec Git qui permet d'explorer l'historique d'un dépôt.
> C'est essentiellement un navigateur graphique d'historique qui affiche le graphe des commits et leurs détails.

##### Fonctionnalités principales de gitk

> - Visualisation de l'arbre des commits avec représentation graphique des branches et des fusions
> - Affichage des métadonnées des commits _(auteur, date, message)_
> - Exploration des différences _(diffs)_ introduites par chaque commit
> - Recherche dans l'historique par divers critères _(auteur, message, etc.)_

##### Comment lancer gitk

> Pour lancer gitk, suivez ces étapes :
> 
> 1. Ouvrez un terminal 
> 2. Naviguez jusqu'au répertoire de votre dépôt Git local
> 3. Exécutez la commande `gitk`

##### Variantes de lancement gitk

> - `gitk --all` : pour afficher toutes les branches
> - `gitk <nom-de-fichier>` : pour voir l'historique d'un fichier spécifique
> - `gitk --since="2 weeks ago"` : pour filtrer les commits par date
>
> Gitk utilise l'interface graphique Tk et présente une apparence plus basique et fonctionnelle que d'autres outils modernes, mais reste efficace pour une visualisation rapide de l'historique.

#### Qu'est-ce que le logiciel git-gui ? Comment se lance-t-il ?

##### Fonctionnalités principales de git-gui

> Git-gui est un outil graphique léger fourni directement avec la distribution Git, spécifiquement conçu pour faciliter les opérations de staging et de commit.

> Ses fonctionnalités principales incluent :
> - Interface dédiée à la préparation et au commit des modifications
> - Visualisation des fichiers modifiés et non suivis
> - Sélection granulaire des parties de fichiers à commiter _(staging partiels)_
> - Création et gestion des commits avec support des messages multi-lignes
> - Exploration rapide des changements avant validation

##### Comment lancer git-gui

> Pour lancer git-gui, suivez ces étapes :
> 
> 1. Ouvrez un terminal 
> 2. Naviguez jusqu'au répertoire de votre dépôt Git local
> 3. Exécutez la commande `git gui`

##### Variantes de lancement git-gui

> Quelques options de lancement avancées :
> 
> - `git gui citool` : Ouvre directement l'interface de commit
> - `git gui blame <fichier>` : Lance l'outil de blame pour un fichier spécifique
> - `git gui` dans un sous-répertoire Git : Ouvrira l'interface pour le dépôt parent

> Git-gui offre une alternative simple aux interfaces graphiques plus complexes, idéale pour les utilisateurs recherchant une solution légère et native pour leurs opérations Git de base.

### Comparaison avec d'autres gui

![ ](https://biz.prlog.org/GitKraken/logo.png)

#### Quel logiciel avez-vous choisi et pourquoi ?

> Nous avons choisi **GitKraken** pour plusieurs raisons :
>
> - C'est l'un des clients Git graphiques les plus populaires et les mieux notés sur le marché
> - Il offre une interface utilisateur moderne et intuitive qui facilite la visualisation des branches et de l'historique
> - Nous avons accès à la version Pro gratuitement grâce au GitHub Student Developer Pack, ce qui nous permet d'utiliser toutes les fonctionnalités premium sans coût supplémentaire
> - Sa compatibilité multi-plateforme _(Windows, macOS, Linux)_ facilite la collaboration entre différents systèmes d'exploitation
> - Les mises à jour régulières et le support actif garantissent une expérience stable et à jour

#### Comment l'avez-vous installé ?

> L'installation de GitKraken _(pour windows)_ s'est déroulée comme suit :
>
> 1. Nous avons d'abord activé notre GitHub Student Developer Pack sur [education.github.com](https://education.github.com/pack)
> 2. Nous avons ensuite visité le site officiel de GitKraken [gitkraken.com](https://www.gitkraken.com/download)
> 3. Téléchargement de l'installateur pour Windows _(environ 100 Mo)_
> 4. Exécution du fichier d'installation et suivi des instructions à l'écran
> 5. Au premier démarrage, connexion avec notre compte GitHub pour activer la licence Pro
> 6. Configuration des préférences de base _(thème, éditeur par défaut)_
>
> Le processus d'installation est simple et guidé, ne nécessitant que quelques minutes pour être opérationnel.

![ ](https://www.linuxadictos.com/wp-content/uploads/gitkraken.png)

#### Comparaison détaillée avec les outils Git natifs

##### GitKraken vs gitk

| Fonctionnalité         | GitKraken                                      | gitk                                         |
| ---------------------- | ---------------------------------------------- | -------------------------------------------- |
| Interface              | Interface moderne avec thèmes personnalisables | Interface basique et datée                   |
| Visualisation          | Graphique interactif avec animations fluides   | Affichage graphique statique limité          |
| Recherche              | Recherche avancée multi-critères               | Recherche basique                            |
| Interactions           | Actions par glisser-déposer                    | Navigation principalement en lecture seule   |
| Intégration            | Intégration native avec GitHub, GitLab, etc.   | Pas d'intégration avec les services en ligne |
| Résolution de conflits | Outil de résolution intégré                    | Nécessite outils externes                    |

##### GitKraken vs git-gui

| Fonctionnalité          | GitKraken                                                 | git-gui                                         |
| ----------------------- | --------------------------------------------------------- | ----------------------------------------------- |
| Staging/Commit          | Interface intuitive avec prévisualisation de diff         | Interface fonctionnelle mais rudimentaire       |
| Opérations sur branches | Représentation visuelle et opérations par glisser-déposer | Opérations par menus uniquement                 |
| Ergonomie               | Flux de travail optimisé et contextuel                    | Interface fragmentée en plusieurs fenêtres      |
| Historique              | Visualisation intégrée et navigable                       | Nécessite le lancement séparé de gitk           |
| Fonctions avancées      | Support natif du stashing, cherry-picking, etc.           | Fonctionnalités limitées aux opérations de base |

##### GitKraken vs Ligne de commande Git

| Critère                | GitKraken                                    | Ligne de commande                                  |
| ---------------------- | -------------------------------------------- | -------------------------------------------------- |
| Courbe d'apprentissage | Rapide, interface intuitive                  | Plus abrupte, nécessite mémorisation des commandes |
| Vitesse d'exécution    | Plus lente _(démarrage, opérations lourdes)_ | Plus rapide pour utilisateurs expérimentés         |
| Visualisation          | Représentation graphique claire              | Textuelle uniquement _(sauf ajout d'alias)_        |
| Automatisation         | Limitée                                      | Excellente _(scripts, hooks, etc.)_                |
| Ressources système     | Consommation plus élevée                     | Légère empreinte mémoire                           |
| Personnalisation       | Limitée aux options disponibles              | Infiniment personnalisable                         |

### Avantages détaillés de GitKraken

#### Interface utilisateur intuitive

> - **Représentation graphique des branches** : Les branches sont représentées visuellement avec des couleurs distinctes pour faciliter la compréhension
> - **Système de drag-and-drop** : Permet de faire des merge, rebase et autres opérations complexes par simple glisser-déposer
> - **Thèmes personnalisables** : Options de personnalisation visuelle pour adapter l'interface à vos préférences
> - **Tooltips explicatives** : Aide contextuelle pour comprendre les différentes fonctionnalités

![ ](https://www.gitkraken.com/wp-content/uploads/2024/05/Group-19495-1024x577.png)

#### Fonctionnalités avancées

> - **Intégration avec GitHub, GitLab, Bitbucket et Azure DevOps** : Gestion complète des pull requests et issues sans quitter l'application
> - **Système de profils** : Permet de gérer plusieurs comptes Git et de basculer facilement entre eux
> - **WIP _(Work In Progress)_** : Permet de sauvegarder temporairement des modifications sans faire de commit
> - **Gestion des sous-modules Git** : Interface visuelle pour les sous-modules, simplifiant une fonctionnalité notoirement complexe
> - **Terminal intégré** : Pour les opérations nécessitant la ligne de commande sans changer d'application
> - **Détection automatique des repositories** : Scanne votre disque pour trouver les repositories existants

#### Productivité et flux de travail

> - **Actions rapides avec raccourcis clavier** : Personnalisation complète des raccourcis pour plus d'efficacité
> - **Timeline interactive** : Navigation temporelle dans l'historique du projet
> - **Notifications intégrées** : Alertes pour les pull requests et les événements importants
> - **Outil de fusion avancé** : Interface visuelle pour résoudre les conflits de merge
> - **Recherche puissante** : Localisation rapide des commits, branches ou fichiers spécifiques

#### Comparaison avec la ligne de commande Git

| Opération                     | GitKraken                                                  | Ligne de commande Git                                 |
| ----------------------------- | ---------------------------------------------------------- | ----------------------------------------------------- |
| Visualisation de l'historique | Graphique interactif avec code couleur                     | Sortie texte avec `git log`                           |
| Gestion des branches          | Vue d'ensemble visuelle, création/fusion par drag-and-drop | Commandes multiples _(`branch`, `checkout`, `merge`)_ |
| Résolution de conflits        | Outil intégré avec comparaison côte à côte                 | Nécessite des outils externes                         |
| Stashing                      | Interface visuelle du WIP                                  | Commandes `git stash`                                 |
| Apprentissage                 | Courbe d'apprentissage plus douce                          | Mémorisation des commandes nécessaire                 |

#### Limites et inconvénients

> - **Consommation de ressources** : Plus gourmand en mémoire et CPU que les outils en ligne de commande
> - **Version gratuite limitée** : Certaines fonctionnalités réservées à la version Pro _(heureusement disponible via GitHub Student Developer Pack)_
> - **Dépendance à l'interface** : Risque de moins bien maîtriser les commandes Git sous-jacentes

### Expérience utilisateur et retours d'expérience

> Après plusieurs semaines d'utilisation intensive de GitKraken dans le cadre de nos projets universitaires, nous avons constaté une amélioration significative dans notre gestion des branches et notre compréhension des structures de nos repositories. Les membres de l'équipe moins familiers avec Git ont pu rapidement devenir productifs grâce à l'interface intuitive.
>
> Notre workflow a été particulièrement amélioré grâce aux fonctionnalités suivantes :
>
> - La visualisation claire des branches, qui permet d'éviter les confusions lors des merges
> - L'intégration avec GitHub, qui nous permet de gérer nos pull requests sans changer de plateforme
> - L'outil de résolution de conflits, qui a considérablement simplifié la gestion des merges complexes

### Conclusion

> L'utilisation de GitKraken représente un excellent compromis pour les développeurs souhaitant combiner puissance de Git et facilité d'utilisation. Si les outils natifs comme gitk et git-gui offrent des fonctionnalités de base et une faible empreinte système, GitKraken se démarque par son interface intuitive et ses capacités avancées qui réduisent considérablement la courbe d'apprentissage de Git.  
>
> Pour les étudiants et professionnels travaillant sur des projets collaboratifs, l'adoption de GitKraken permet d'accélérer le flux de travail tout en minimisant les erreurs fréquentes liées à la ligne de commande. La visualisation claire de l'historique et des branches facilite la compréhension des projets complexes et favorise une meilleure organisation du code.  
>
> Les inconvénients de GitKraken _(consommation de ressources, version gratuite limitée)_ sont largement compensés par ses avantages, particulièrement pour les étudiants bénéficiant du GitHub Student Developer Pack. À l'issue de notre analyse, nous recommandons GitKraken comme solution idéale pour les équipes de développement cherchant à optimiser leur utilisation de Git tout en maintenant un flux de travail visuel et intuitif.

## Références et ressources

> - Documentation officielle de GitKraken : [https://support.gitkraken.com/](https://support.gitkraken.com/)
> - Documentation Git : [https://git-scm.com/doc](https://git-scm.com/doc)
> - GitHub Student Developer Pack : [https://education.github.com/pack](https://education.github.com/pack)


### Configuration système recommandée pour GitKraken

> - **Système d'exploitation** : Windows 10/11, macOS 10.13+, Linux avec GLIBC 2.17+
> - **RAM** : 4 Go minimum, 8 Go recommandé
> - **Espace disque** : 300 Mo disponibles
> - **Processeur** : Multi-core recommandé pour les grands repositories

