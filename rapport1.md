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

## Préparation d'une machine virtuelle Debian

### Prérequis matériel

- 4 Go de RAM minimum
- 20 Go d’espace disque disponible ou plus
- VirtualBox installé avec son «extension pack» (VBoxGuestAddition.iso) sur la machine hôte

### Préparation d'une machine virtuelle Debian

- Nom de la machine dans VirtualBox : sae203
- Dossier de la machine : `/usr/local/virtual_machine/infoetu/login`
- Type : Linux
- Version : Debian 12 64-bit
- Mémoire vive : 2048 Mo.
- Disque dur : 20 Go sur une seule partition, ne pas cocher la case "Pre-allocate Full Size"
- Cocher la case "Skip Unattended Installation" pour éviter que Virtualbox réalise des actions non souhaités.

### Configuration matérielle dans Vbox

#### Que signifie "64-bit" dans "Debian 64-bit" ?

> 64-bit fait référence à **l'architecture du processeur** capable de traiter des données sur 64 bits à la fois, permettant notamment d'adresser plus de mémoire RAM que les systèmes 32-bit.  
> [**architechture de Debian**](https://www.debian.org/releases/stable/amd64/ch02s01.fr.html)

#### Quelle est la configuration réseau utilisée par défaut ?

> NAT _(Network Address Translation)_ est la **configuration réseau** par défaut dans VirtualBox. Elle permet à la VM d'accéder à Internet via l'ordinateur hôte.  
> [**NAT dans Vbox**](https://www.virtualbox.org/manual/ch06.html#network_nat)

#### Quel est le nom du fichier XML contenant la configuration de votre machine ?

> Le fichier de configuration se trouve dans `~/.config/VirtualBox/VirtualBox.xml`  
> [**stockage des données d'une VM Vbox**](https://docs.oracle.com/en/virtualization/virtualbox/6.0/admin/vboxconfigdata.html)

#### Comment modifier ce fichier de configuration pour mettre 2 processeurs à votre machine ?

> Dans le **fichier XML**, il faut modifier la balise `<CPU count="1">` en `<CPU count="2">`  
> [**Modification de Vbox**](https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxmanage-modifyvm.html)

### Installation de l'OS

- Nom de la machine : serveur
- Domaine : Laisser vide
- Pays/langue : France
- Miroir : `http://debian.polytech-lille.fr`
- Proxy : pas de proxy
- Compte administrateur : root / root
- Un compte utilisateur : User / user / user
- Partition : 1 seule partition de la taille du disque
- Sélection des logiciels de démarrage (Paquetages logiciels à préinstaller pour se simplifier la vie par la suite) :
  1. environnement de bureau Debian
  2. MATE (sans Gnome)
  3. serveur web
  4. serveur ssh
  5. utilitaire usuels du système

### Installation de l'OS de base

#### Qu'est-ce qu'un fichier iso bootable ?

> C'est une **image disque** contenant un système d'exploitation qui peut démarrer directement au lancement de la machine.  
> [**FAQ de Debian sur les images**](https://www.debian.org/CD/faq/#what-is)

#### Qu'est-ce que MATE ? GNOME ?

> MATE est un **environnement de bureau** fork de GNOME 2, maintenant la disposition et expérience traditionnelle. GNOME est un environnement de bureau moderne et populaire pour Linux, offrant une interface utilisateur intuitive.  
> [**Site du projet MATE**](https://mate-desktop.org/)

#### Qu'est-ce qu'un serveur ssh ?

> Un serveur SSH _(Secure Shell)_ est un **service permettant une connexion sécurisée à distance** sur une machine, avec chiffrement des communications.  
> [**Guide de SSH Academy**](https://www.ssh.com/academy/ssh/protocol)

#### Qu'est-ce qu'un serveur mandataire ?

> Un serveur mandataire _(proxy)_ est un **intermédiaire** entre les utilisateurs et Internet, pouvant filtrer les accès, mettre en cache des données et protéger l'anonymat.  
> [**Page Wikipédia sur le Proxy**](https://fr.wikipedia.org/wiki/Proxy)

## Préparation du système

> [!WARNING]  
> Ces manipulations peuvent avoir des consequences irréversibles sur votre machine si mal appliquées.

### Acces sudo

#### Comment peux-ton savoir à quels groupes appartient l'utilisateur user ?

> La commande `groups user` ou `id user` permet **d'afficher les groupes** auxquels appartient un utilisateur.  
> [**source**](https://manpages.debian.org/bullseye/coreutils/groups.1.en.html)

### Installation des suppléments invités

#### Insérer le cd des suppléments

> Dans Vbox, faites :  
>  `Périphériques › Insérer l’image CD des additions invités…`

#### Monter le CD

> Pour monter le cd, rentrez la commande suivante
> `sudo mount /dev/cdrom /mnt`

#### Installer les suppléments :

> Il faut installer les suppléments, faites
> `sudo /mnt/VBoxLinuxAdditions.run`

### Suppléments invités

#### Quel est la version du noyau Linux utilisé par votre VM ?

> La commande `uname -r` **affiche la version du noyau** Linux en cours d'utilisation.  
> [**Pages de manuel des outils de surveillance système Debian**](https://manpages.debian.org/bullseye/manpages-fr/uname.1.fr.html)

#### À quoi servent les suppléments invités ? Donner 2 principales raisons de les installer.

> Les suppléments invités permettent :
>
> 1. Une meilleure intégration avec le système hôte _(copier-coller, glisser-déposer)_
> 2. De meilleures performances graphiques avec le support de l'accélération 3D
>
> [**Documentation des fonctionnalités VirtualBox**](https://www.virtualbox.org/manual/ch04.html#additions-windows)

#### À quoi sert la commande mount ?

> La commande `mount` permet de **monter un système de fichiers**, rendant son contenu accessible dans l'arborescence du système. Dans notre cas, elle monte le CD virtuel des suppléments invités.  
> [**manpage de mount**](https://manpages.debian.org/bullseye/mount/mount.8.en.html)

## À propos de la distribution Debian

### Qu'est-ce que le Projet Debian ? D'où vient le nom Debian ?

> Debian est un **projet communautaire** qui développe et maintient un système d'exploitation libre basé sur Linux. Le nom "Debian" est **une combinaison** de "Deb" _(de Debra, prénom de la femme du fondateur Ian Murdock)_ et "Ian".  
> [**Historique du projet Debian**](https://www.debian.org/doc/manuals/project-history/ch-intro.en.html)

### Il existe 3 durées de prise en charge (support) de ces versions :

> - Support minimal : environ 2 ans
> - Support long terme _(LTS)_ : 5 ans
> - Support long terme étendu _(ELTS)_ : jusqu'à 10 ans  
>   [**Wiki des LTS de Debian**](https://wiki.debian.org/LTS)

### Pendant combien de temps les mises à jour de sécurité seront-elles fournies ?

> **Les mises à jour de sécurité** sont fournies pendant environ **3 ans** après la sortie de la version stable, ou **1 an après** la sortie de la **nouvelle version stable**.  
> [**FAQ de sécurité de Debian**](https://www.debian.org/security/faq#lifespan)

### Combien de version au minimum sont activement maintenues par Debian ?

> Debian maintient activement **3 distributions** : stable, testing et unstable _(sid)_  
> [**Page des releases de Debian**](https://www.debian.org/releases/)

### D'où viennent les noms de code des distributions ?

> Les noms de code des versions Debian sont tirés **des personnages** du film d'animation **Toy Story**  
> [**Wiki des noms de releases de Debian**](https://wiki.debian.org/DebianReleases#Code_Names)

### Architecture prises en charge par Bullseye

> Bullseye prend en charge **9 architectures** : amd64, arm64, armel, armhf, i386, mips64el, mipsel, ppc64el, et s390x  
> [**Notes de releases de Debian Bullseye**](https://www.debian.org/releases/bullseye/releasenotes)

### Le premier nom de code de Debian :

> - Le premier nom de code était **"Buzz"**
> - Annoncé en **1996**
> - Version **1.1 de Debian**  
>   [**Historique des versions de Debian**](https://www.debian.org/doc/manuals/project-history/releases.en.html)

### Le dernier nom de code :

> - **"Duke"** est le dernier nom annoncé
> - Annoncé en **...**
> - Ce sera **Debian 15**  
>   [**Liste de diffusion officielle de Debian**](https://lists.debian.org/debian-devel-announce/2023/04/msg00000.html)

## Installation préconfigurée

### Récupérer et préparer les fichiers nécessaires

> 1. Récupérer l’archive autoinstall_Debian.zip, et décompresser-là dans le répertoire de
>    votre machine virtuelle.
> 2. Remplacer la chaîne @@UUID@@ par un identifiant unique universel. Le plus simple est d’exécuter
>    la commande ci-dessous en étant placé dans le même répertoire que votre fichier S203-Debian12.viso.  
>    `sed -i -E "s/(--iprt-iso-maker-file-marker-bourne-sh).\*$/\1=$(cat /proc/sys/kernel/random/uuid)/" S203-Debian12.viso`
> 3. Insérer le fichier S203_Debian12.viso dans le lecteur optique (cd/dvd) de votre machine virtuelle.
> 4. Démarrer la machine virtuelle et laissez l’installation se dérouler jusqu’au reboot.

### Ajustement de la pré-configuration

> avant d'installer d'ajuster la configuration, il faut élever ses privilèges avec la commande
> `su -`

#### Ajouter le droit d’utiliser sudo à l’utilisateur standard

##### Installation de sudo

```bash
apt-get update
apt-get install sudo
```

##### Ajout des droits

```bash
usermod -aG sudo user
```

#### Installer l’environnement MATE.

```bash
# Mettre à jour les dépôts
apt-get update

# Installer l'environnement de bureau MATE
apt-get install mate-desktop-environment
```

#### Installation de paquets :

```bash
apt-get install \
    sudo \
    git \
    sqlite3 \
    curl \
    bash-completion \
    neofetch
```
