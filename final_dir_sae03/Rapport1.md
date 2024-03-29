<link href="style.css" rel="stylesheet"></link>

### Question(s) 1 : Configuration matérielle dans VirtualBox
* Que signifie “64-bit” dans “Debian 64-bit” ?
    
    > "64-bit" fait référence à **l'architecture du processeur** utilisée par le système d'exploitation Debian.  
    Dans le contexte de "Debian 64-bit", cela signifie que **la version** de Debian est conçue pour fonctionner sur des processeurs 64 bits.  
    Les processeurs 64 bits sont capables de traiter des instructions en blocs de 64 bits à la fois, ce qui peut offrir des performances et une capacité de mémoire supérieures par rapport aux processeurs 32 bits.  
    Ainsi, une version 64 bits de Debian est optimisée pour fonctionner sur des systèmes équipés de processeurs 64 bits, offrant potentiellement des performances améliorées et une meilleure gestion de la mémoire pour les applications et les systèmes qui exigent une grande puissance de calcul ou une grande capacité mémoire.
    
  **Source :** [Lemagit.fr](https://www.lemagit.fr/definition/64-bits)  
  &nbsp;
* Quelle est la configuration réseau utilisée par défaut ?
  > La configuration réseau par défaut **l’Interface NAT**[^1].  
  C'est un processus de modification des adresses IP, des ports source et de destination qui permet aux machines de communiquer avec une seule adresse ip publique.  

  **Source :** [Fortinet.com](https://www.fortinet.com/fr/resources/cyberglossary/network-address-translation)  
  &nbsp;
* Quel est le nom du fichier XML contenant la configuration de votre machine ?  
  > Ce fichier s'appelle **sae203.vbox**.
  
  &nbsp;
* Sauriez-vous le modifier directement ce fichier de configuration pour mettre 2 processeurs à votre machine ?  
  > Pour modifier le nombre de processeurs du fichier **sae203.vbox**, il faut changer la valeur de CPU count à 2.  
  
  &nbsp;  
  &nbsp;  

### Question(s) 2. Installation OS de base 
* Qu’est-ce qu’un fichier iso bootable ?

    > Un fichier ISO bootable est une image disque qui contient l'ensemble des fichiers et des données nécessaires pour installer un système d'exploitation ou un logiciel. Le terme "bootable" signifie que cette image est configurée de manière à ce qu'elle puisse être utilisée pour démarrer un ordinateur directement à partir de cette image, sans avoir besoin d'un système d'exploitation déjà installé.

    **Source :** [Ionos.fr](https://www.ionos.fr/digitalguide/serveur/know-how/quest-ce-quun-fichier-iso/)

  &nbsp;  
* Qu’est-ce que MATE ? GNOME ?

    > MATE et GNOME sont deux environnements de bureau pour les systèmes d'exploitation Linux et Unix, offrant des interfaces graphiques pour interagir avec le système et les applications.
    
    > MATE est un environnement de bureau léger et intuitif qui est un fork de GNOME 2. L'objectif principal de MATE est de fournir une expérience utilisateur familière pour les utilisateurs de Linux, en particulier ceux qui préféraient l'ancien environnement GNOME 2. Il offre une interface utilisateur traditionnelle avec un menu d'applications, une barre des tâches et une gestion des fenêtres classiques. MATE est conçu pour être rapide, stable et hautement personnalisable.
    
    > GNOME est un environnement de bureau moderne et convivial pour les systèmes d'exploitation basés sur Linux et Unix. GNOME met l'accent sur l'ergonomie, l'accessibilité et l'expérience utilisateur. Il propose une interface utilisateur épurée et intuitive avec un lanceur d'applications, un gestionnaire de fichiers intégré et une multitude d'applications intégrées pour les activités quotidiennes telles que la navigation sur le Web, la gestion des courriels et la retouche d'images. GNOME est hautement personnalisable et extensible grâce à des extensions et des thèmes.
 
    **Sources :** [Gnome.org](https://www.gnome.org/) et [mate-desktop.org](https://mate-desktop.org/)  

  &nbsp;  
* Qu’est-ce qu’un serveur web ?  

    > Un serveur web est un logiciel informatique conçu pour recevoir, traiter et répondre aux requêtes HTTP (Hypertext Transfer Protocol) provenant des clients, généralement des navigateurs web, et pour fournir des ressources web, telles que des pages HTML, des images, des fichiers CSS et JavaScript, en réponse à ces requêtes.  
    En termes simples, un serveur web permet de rendre les sites web accessibles sur Internet.

    ![](img/sch_http.png)
  
    **Source :** [Mozilla.org](https://developer.mozilla.org/fr/docs/Learn/Common_questions/Web_mechanics/What_is_a_web_server)  
  &nbsp;  
* Qu’est-ce qu’un serveur ssh ?  

    > Un serveur SSH (Secure Shell) est un logiciel qui permet à un utilisateur de se connecter de manière sécurisée à un ordinateur distant sur un réseau, généralement Internet.  
    Le protocole SSH fournit un moyen chiffré et sécurisé pour accéder à des systèmes distants et exécuter des commandes à distance, transférer des fichiers et gérer des systèmes à distance.  

    ![](img/sch_ssh1.png)

    ![](img/sch_ssh2.png)

    **Source :** [It-Connect.fr](https://www.it-connect.fr/chapitres/quest-ce-que-ssh/)

  &nbsp;  
* Qu’est-ce qu’un serveur mandataire ?  

    > Un serveur mandataire, également connu sous le nom de serveur proxy, est un serveur informatique qui agit comme un intermédiaire entre les clients et d'autres serveurs.  
    Son rôle principal est de recevoir les requêtes des clients, telles que des demandes de pages web, des fichiers, ou d'autres ressources, et de les transmettre aux serveurs appropriés.  En retour, il renvoie les réponses des serveurs aux clients.  
    

    **Source :** [Techno-Science.net](https://www.techno-science.net/definition/3812.html)

  &nbsp;
  &nbsp;  

### Question(s) 3. sudo
* Comment peux-ton savoir à quels groupes appartient l'utilisateur user ?  

  > Pour savoir à quels groupes l'utilisateur user appartient, il suffit juste de se connecter en administrateur avec la commade :
  `su -`  
  > Puis mettre de mettre la commande :
  `groups user`  
  > Si l'utilisateur au quel vous êtes connecté possède les droits sudo pas besoins de mettre le mode administrateur, il suffit juste de mettre :
  `sudo groups user`
    
&nbsp;  

### Question(s) 4. Suppléments invités 
* Quel est la version du noyau Linux utilisé par votre VM ? 
  &nbsp;  
* À quoi servent les suppléments invités ? Donner 2 principales raisons de les installer.  

  > Meilleures performances graphiques : les pilotes graphiques personnalisés qui sont installés avec les additions invité vous offrent de meilleures performances graphiques pour un système plus fluide. Vous pourrez aussi redimensionner la fenêtre de la machine virtuelle, la résolution d’écran de l’invité sera automatiquement ajustée.

  > Dossiers partagés : permet d’échanger des fichiers entre l’hôte et l’invité.

  **Source :** [Lecrabeinfo.net](https://lecrabeinfo.net/virtualbox-installer-les-additions-invite-guest-additions.html)  
  &nbsp;
* À quoi sert la commande mount (dans notre cas de figure et dans le cas général) ?  

  > La commande mount permet de demander au système d'exploitation de rendre un système de fichiers accessible, à un emplacement spécifié (le point de montage). La commande mount monte un système de fichiers indiqué comme répertoire à l'aide du paramètre Noeud:Répertoire, sur le répertoire spécifié par le paramètre Répertoire. Une fois la commande mount exécutée, le répertoire indiqué devient le répertoire racine du nouveau système de fichiers monté.

  **Source :** [ibm.com](https://www.ibm.com/docs/fr/power9?topic=commands-mount-command)
  &nbsp;  
  &nbsp;  
  
### 4.2. Quelques Questions
* Qu’est-ce que le Projet Debian ? D’où vient le nom Debian ?  

  >Le Projet Debian est une organisation communautaire qui développe le système d'exploitation Debian. Debian est une distribution Linux très populaire, connue pour sa stabilité, sa fiabilité et son engagement envers les principes du logiciel libre. Son nom "Debian" est une fusion des prénoms du fondateur du projet, Ian Murdock, et de celui de son épouse.  

  **Source :** [Debian.org](https://www.debian.org/doc/manuals/project-history/intro.fr.html#:~:text=La%20prononciation%20officielle%20de%20Debian,et%20de%20son%20épouse%2C%20Debra)  
    &nbsp;  
  
* Il existe 3 durées de prise en charge (support) de ces versions : la durée minimale, la durée en support long terme (LTS) et la durée en support long terme étendue (ELTS). Quelle sont les durées de ces prises en charge ?  

  > La durée minimal correspond à la période pendant laquelle le fournisseur garantit la disponibilité des correctifs de sécurité et des mises à jour de la version logicielle. Cette période peut varier, mais elle est souvent d'au moins quelques mois à un an après la sortie de la version. Il y a aussi la durée en support long terme, le systeme d'exploitation peut donc bénéficier d'une prise en charge à long terme. Cela signifie que le fournisseur s'engage à fournir des mises à jour de sécurité et des correctifs de bugs pour une période prolongée, souvent plusieurs années après la sortie initiale de la version, dans notre cas c'est 5 ans. Et enfin il y a aussi la durée en support long terme étendue, c'est a dire qu'ils continueront à fournir des correctifs de sécurité et des mises à jour critiques sur une longue période, dans notre cas 10ans.
  
  **Source :** [Wiki.debian.org](https://wiki.debian.org/fr/LTS/)  
  &nbsp;  
* Pendant combien de temps les mises à jour de sécurité seront-elles fournies ?  

  > L'équipe en charge de la sécurité prend en charge la distribution stable pendant trois années après sa publication. Il n'est pas possible de prendre en charge trois distributions, ils ne pourraient pas gérer les 3 de manière efficace.
  

  **Source :** [Debian.org](https://www.debian.org/security/faq.fr.html#lifespan)  
    &nbsp;  
* Combien de version au minimum sont activement maintenues par Debian ? Donnez leur nom générique (= les types de distribution).  

  > Debian maintient généralement trois versions en même temps : Stable : C'est la version principale et la plus récente, conçue pour être stable et fiable. C'est la version recommandée pour la plupart des utilisateurs, car elle bénéficie d'un support complet, y compris les mises à jour de sécurité et les correctifs de bogues.
  Testing : Également connue sous le nom de "Testing", cette version est en cours de développement et contient des logiciels plus récents que la version stable, mais elle peut être moins stable car elle est sujette à des changements fréquents. Cette version est destinée aux utilisateurs qui souhaitent accéder aux dernières fonctionnalités et qui sont prêts à accepter un certain niveau de risque.  
  Unstable : Aussi appelée "Unstable" ou "Sid", cette version est le terrain de jeu pour les développeurs Debian. Elle contient les dernières versions de logiciels qui sont en cours de préparation pour inclusion dans la prochaine version stable. Cette version est instable par nature et n'est pas recommandée pour une utilisation en production, mais elle est utile pour les tests et le développement.  

  **Source :** [Debian.org](https://www.debian.org/releases/index.fr.html#:~:text=Debian%20a%20toujours%20au%20moins,%3A%20stable%20%2C%20testing%20et%20unstable%20)

  &nbsp;  
* Chaque distribution majeur possède un nom de code différent. Par exemple, la version majeur actuelle (Debian 12) se nomme bookworm. D’où viennent les noms de code données aux distributions ?
  > Les noms de code donnés aux distributions majeures de Debian (et à de nombreuses autres distributions Linux) sont généralement tirés des noms de personnages du film d'animation « Toy Story » de Pixar. Cela remonte aux premiers jours du projet Debian lorsque Ian Murdock, le fondateur de Debian, a décidé de nommer les versions de manière ludique et amusante. Les développeurs de Debian ont adopté cette tradition et continuent de nommer les versions de Debian d'après les personnages de Toy Story.

  **Source :** [Debian.org](https://www.debian.org/doc/manuals/debian-faq/ftparchives.fr.html)

  &nbsp;  
  
* L’un des atouts de Debian fut le nombre d’architecture (≈ processeurs) officiellement prises en charge. Combien et lesquelles sont prises en charge par la version Bullseye ?  

  > 13 architecture  -> amd64 (64-bit PC) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> arm64 (ARM 64 bits) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> armel (ARM Little Endian 32 bits) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> armhf (ARM Hard Float 32 bits) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> i386 (PC 32 bits) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> mips (MIPS (big endian)) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> mips64el (MIPS (little endian)) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> ppc64el (PowerPC 64 bits Little Endian) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> s390x (IBM System z) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> riscv64 (RISC-V 64 bits) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> m68k (Motorola 680x0) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> alpha (DEC Alpha) </br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;-> hppa (HP PA-RISC)   </br>
    
  &nbsp;  

* Quelle a était le premier nom de code utilisé ?  

  > Le premier nom de code utilisé pour une version de Debian était « Buzz ». À l'époque, le projet était dirigé par Ian Murdock, qui a décidé d'attribuer des noms de code aux versions du système d'exploitation Debian en utilisant des personnages de films de science-fiction .Le nom de code "Buzz" a été choisi en l'honneur du personnage Buzz Lightyear, un des personnages principaux du film d'animation de Pixar, "Toy Story", sorti en 1995.C'était un film très populaire à l'époque, et le personnage de Buzz Lightyear représentait l'aventure, l'exploration et l'innovation, des valeurs qui ont peut-être été considérées comme pertinentes pour cette version de Debian.

  **Source :** [Wiki.debian.org](https://wiki.debian.org/fr/DebianBuzz)

    &nbsp;  
  
* Quand a-t-il été annoncé ?  

  > Debian sous le nom de code "Buzz" a été annoncé le 17 juin 1996 soit 3 ans après la première version.

  **Source :** [Wiki.debian.org](https://wiki.debian.org/fr/DebianBuzz)

    &nbsp;  

* Quelle était le numéro de version de cette distribution ?  

  > Le numéro de version pour la première disribution de Debian sous le nom de code "Buzz" est 1.1 .  

  **Source :** [Wiki.debian.org](https://wiki.debian.org/fr/DebianBuzz)

    &nbsp;   
  
* Quel est le dernier nom de code annoncée à ce jour ?  

  > Le dernier nom de code annocée à ce jour est Bookworm

  **Source :** [Debian.org](https://www.debian.org/releases/index.fr.html#:~:text=Actuellement%2C%20la%20distribution%20stable%20de,publiée%20le%2010%20février%202024.)
  
  &nbsp;  
* Quand a-t-il été annoncé ?  

  > Elle à été publié 10 juin 2023

  **Source :** [Debian.org](https://www.debian.org/releases/index.fr.html#:~:text=Actuellement%2C%20la%20distribution%20stable%20de,publiée%20le%2010%20février%202024.)
  
  &nbsp;  
* Quelle est la version de cette distribution ?  

  > Elle possède la version 12, sa dernière version est le 12.5 en février 2024

   **Source :** [Debian.org](https://www.debian.org/releases/index.fr.html#:~:text=Actuellement%2C%20la%20distribution%20stable%20de,publiée%20le%2010%20février%202024.)
  
  &nbsp;
  
### Question(s) 5. Ajustement de la pré-configuration  
* Ajouter le droit d’utiliser sudo à l’utilisateur standard
  > `su -`  
  > `usermod -aG sudo utilisateur`  
  
    &nbsp;  
* Installer l’environnement MATE  
  > `su -`  
  > `tasksel`  
  
  > Puis cocher la case MATE et appliquer 
  &nbsp;  
* Ajouter les paquets suivants :  

     1. sudo :  
        > `su -`  
        > `apt install sudo`  
     3. git, sqlite3, curl :  
        > `su -`  
        > `apt install git`  
        > `apt install sqlite3`  
        > `apt install curl`  
        
     5. bash-completion :
        > `su -`  
        > `apt install bash-completion`  
        
     7. neofetch :  
        > `su -`  
        > `apt install neofetch`


  [^1]: Network Address Translation
