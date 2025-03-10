---
title: "Rapport SAE2.03"
authors:
  - LELEU Benjamin
  - Lecoester Martin
  - Stievenard Adam
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

- Que signifie "64-bit" dans "Debian 64-bit" ?

  > 64-bit fait référence à **l'architecture du processeur** capable de traiter des données sur 64 bits à la fois, permettant notamment d'adresser plus de mémoire RAM que les systèmes 32-bit.  
  > [**source**](https://www.debian.org/releases/stable/amd64/ch02s01.fr.html)

- Quelle est la configuration réseau utilisée par défaut ?

  > NAT _(Network Address Translation)_ est la **configuration réseau** par défaut dans VirtualBox. Elle permet à la VM d'accéder à Internet via l'ordinateur hôte.  
  > [**source**](https://www.virtualbox.org/manual/ch06.html#network_nat)

- Quel est le nom du fichier XML contenant la configuration de votre machine ?

  > Le fichier de configuration se trouve dans `~/.config/VirtualBox/VirtualBox.xml`  
  > [**source**](https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxconfigdata.html)

- Sauriez-vous modifier directement ce fichier de configuration pour mettre 2 processeurs à votre machine ?

  > Oui, dans le **fichier XML**, il faut modifier la balise `<CPU count="1">` en `<CPU count="2">`  
  > [**source**](https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxmanage-modifyvm.html)

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
  a. environnement de bureau Debian
  b. MATE (sans Gnome)
  c. serveur web
  d. serveur ssh
  e. utilitaire usuels du système

### Installation de l'OS de base

- Qu'est-ce qu'un fichier iso bootable ?

  > C'est une **image disque** contenant un système d'exploitation qui peut démarrer directement au lancement de la machine.  
  > [**source**](https://www.debian.org/CD/faq/#what-is)

- Qu'est-ce que MATE ? GNOME ?

  > MATE est un **environnement de bureau** fork de GNOME 2, maintenant la disposition et expérience traditionnelle. GNOME est un environnement de bureau moderne et populaire pour Linux, offrant une interface utilisateur intuitive.  
  > [**source**](https://mate-desktop.org/)

- Qu'est-ce qu'un serveur ssh ?

  > Un serveur SSH _(Secure Shell)_ est un **service permettant une connexion sécurisée à distance** sur une machine, avec chiffrement des communications.  
  > [**source**](https://www.ssh.com/academy/ssh/protocol)

- Qu'est-ce qu'un serveur mandataire ?

  > Un serveur mandataire _(proxy)_ est un **intermédiaire** entre les utilisateurs et Internet, pouvant filtrer les accès, mettre en cache des données et protéger l'anonymat.  
  > [**source**](https://www.rfc-editor.org/rfc/rfc2616#section-1.3)

## Préparation du système

> **[!NOTE]**  
> Ces manipulations peuvent avoir des consequences irréversibles sur votre machine si mal appliquées.

### Acces sudo

- Comment peux-ton savoir à quels groupes appartient l'utilisateur user ?

  > La commande `groups user` ou `id user` permet **d'afficher les groupes** auxquels appartient un utilisateur.  
  > [**source**](https://manpages.debian.org/bullseye/coreutils/groups.1.en.html)

### Installation des suppléments invités

1. Insérer le cd des suppléments : Périphériques › Insérer l’image CD des additions invités…
2. Monter le CD
   `sudo mount /dev/cdrom /mnt`
3. Installer les suppléments :
   `sudo /mnt/VBoxLinuxAdditions.run`
4. Rebooter et connecter-vous avec le compte user pour prendre en compte les suppléments.
   Redimensionnez votre fenêtre pour vérifier que cela a bien fonctionné.

### Suppléments invités

- Quel est la version du noyau Linux utilisé par votre VM ?

  > La commande `uname -r` **affiche la version du noyau** Linux en cours d'utilisation.  
  > [**source**](https://manpages.debian.org/bullseye/procps/uname.1.en.html)

- À quoi servent les suppléments invités ? Donner 2 principales raisons de les installer.

  > Les suppléments invités permettent :
  >
  > 1. Une meilleure intégration avec le système hôte _(copier-coller, glisser-déposer)_
  > 2. De meilleures performances graphiques avec le support de l'accélération 3D
  >
  > [**source**](https://www.virtualbox.org/manual/ch04.html#additions-windows)

- À quoi sert la commande mount ?

  > La commande `mount` permet de **monter un système de fichiers**, rendant son contenu accessible dans l'arborescence du système. Dans notre cas, elle monte le CD virtuel des suppléments invités.  
  > [**source**](https://manpages.debian.org/bullseye/mount/mount.8.en.html)

## À propos de la distribution Debian

1. Qu'est-ce que le Projet Debian ? D'où vient le nom Debian ?

   > Debian est un **projet communautaire** qui développe et maintient un système d'exploitation libre basé sur Linux. Le nom "Debian" est **une combinaison** de "Deb" _(de Debra, prénom de la femme du fondateur Ian Murdock)_ et "Ian".  
   > [**source**](https://www.debian.org/doc/manuals/project-history/ch-intro.en.html)

2. Il existe 3 durées de prise en charge (support) de ces versions :

   > - Support minimal : environ 2 ans
   > - Support long terme _(LTS)_ : 5 ans
   > - Support long terme étendu _(ELTS)_ : jusqu'à 10 ans  
   >   [**source**](https://wiki.debian.org/LTS)

3. Pendant combien de temps les mises à jour de sécurité seront-elles fournies ?

   > **Les mises à jour de sécurité** sont fournies pendant environ **3 ans** après la sortie de la version stable, ou **1 an après** la sortie de la **nouvelle version stable**.  
   > [**source**](https://www.debian.org/security/faq#lifespan)

4. Combien de version au minimum sont activement maintenues par Debian ?

   > Debian maintient activement **3 distributions** : stable, testing et unstable _(sid)_  
   > [**source**](https://www.debian.org/releases/)

5. D'où viennent les noms de code des distributions ?

   > Les noms de code des versions Debian sont tirés **des personnages** du film d'animation **Toy Story**  
   > [**source**](https://wiki.debian.org/DebianReleases#Code_Names)

6. Architecture prises en charge par Bullseye

   > Bullseye prend en charge **9 architectures** : amd64, arm64, armel, armhf, i386, mips64el, mipsel, ppc64el, et s390x  
   > [**source**](https://www.debian.org/releases/bullseye/releasenotes)

7. Premier nom de code :

   > - Le premier nom de code était **"Buzz"**
   > - Annoncé en **1996**
   > - Version **1.1 de Debian**  
   >   [**source**](https://www.debian.org/doc/manuals/project-history/releases.en.html)

8. Dernier nom de code :

   > - **"Forky"** est le dernier nom annoncé
   > - Annoncé en **avril 2023**
   > - Ce sera **Debian 13**  
   >   [**source**](https://lists.debian.org/debian-devel-announce/2023/04/msg00000.html)

## Installation préconfigurée

### Récupérer et préparer les fichiers nécessaires

1. Récupérer l’archive autoinstall_Debian.zip sur Moodle et décompresser-là dans le répertoire de
   votre machine virtuelle.
2. Remplacer la chaîne @@UUID@@ par un identifiant unique universel. Le plus simple est d’exécuter
   la commande ci-dessous en étant placé dans le même répertoire que votre fichier S203-Debian12.viso.
   `sed -i -E "s/(--iprt-iso-maker-file-marker-bourne-sh).\*$/\1=$(cat /proc/sys/kernel/random/uuid)/" S203-Debian12.viso`
3. Insérer le fichier S203_Debian12.viso dans le lecteur optique (cd/dvd) de votre machine virtuelle ;
4. Démarrer la machine virtuelle et laissez l’installation se dérouler jusqu’au reboot.
5. Testez les ajouts invités en vous connectant (user/user, ou root/root) puis en modifiant la taille de la
   fenêtre

### Ajustement de la pré-configuration

Modifier votre configuration (et recommencez l’installation) afin de :

- Ajouter le droit d’utiliser sudo à l’utilisateur standard
- Installer l’environnement MATE.
- Ajouter les paquets suivants :
  - sudo : sinon la gestion sudo est inutile
  - git, sqlite3, curl : pour préparer l’installation de la semaine prochaine
  - bash-completion : va vous simplifier grandement l’écriture des lignes de commande
  - neofetch : pas très utile mais c’est un classique dans son genre (essayez-le
