### SAE 2.03 : RAPPORT SEMAINE 08

STIEVENARD Adam -- CHAUMETTE Thomas -- Leclercq Hugo

---
**_Partie VM_**

### Question(s) 1 : Configuration matérielle dans VirtualBox 
* Que signifie “64-bit” dans “Debian 64-bit” ?
    
    > "64-bit" fait référence à l'architecture du processeur utilisée par le système d'exploitation Debian.  
    Dans le contexte de "Debian 64-bit", cela signifie que la version de Debian est conçue pour fonctionner sur des processeurs 64 bits.  
    Les processeurs 64 bits sont capables de traiter des instructions en blocs de 64 bits à la fois, ce qui peut offrir des performances et une capacité de mémoire supérieures par rapport aux processeurs 32 bits.  
    Ainsi, une version 64 bits de Debian est optimisée pour fonctionner sur des systèmes équipés de processeurs 64 bits, offrant potentiellement des performances améliorées et une meilleure gestion de la mémoire pour les applications et les systèmes qui exigent une grande puissance de calcul ou une grande capacité mémoire.
    
  **Source :** [LeMagIt](https://www.lemagit.fr/definition/64-bits)  
  &nbsp;
* Quelle est la configuration réseau utilisée par défaut ?  
  &nbsp;
* Quel est le nom du fichier XML contenant la configuration de votre machine ?  
  &nbsp;
* Sauriez-vous le modifier directement ce fichier de configuration pour mettre 2 processeurs à votre machine ?
  &nbsp;  
  &nbsp;  

### Question(s) 2. Installation OS de base 
* Qu’est-ce qu’un fichier iso bootable ?

    > Un fichier ISO bootable est une image disque qui contient l'ensemble des fichiers et des données nécessaires pour installer un système d'exploitation ou un logiciel. Le terme "bootable" signifie que cette image est configurée de manière à ce qu'elle puisse être utilisée pour démarrer un ordinateur directement à partir de cette image, sans avoir besoin d'un système d'exploitation déjà installé.

    **Source :** [Digital Guide IONOS](https://www.ionos.fr/digitalguide/serveur/know-how/quest-ce-quun-fichier-iso/)

  &nbsp;  
* Qu’est-ce que MATE ? GNOME ?

    > MATE et GNOME sont deux environnements de bureau pour les systèmes d'exploitation Linux et Unix, offrant des interfaces graphiques pour interagir avec le système et les applications.
    
    > MATE est un environnement de bureau léger et intuitif qui est un fork de GNOME 2. L'objectif principal de MATE est de fournir une expérience utilisateur familière pour les utilisateurs de Linux, en particulier ceux qui préféraient l'ancien environnement GNOME 2. Il offre une interface utilisateur traditionnelle avec un menu d'applications, une barre des tâches et une gestion des fenêtres classiques. MATE est conçu pour être rapide, stable et hautement personnalisable.
    
    > GNOME est un environnement de bureau moderne et convivial pour les systèmes d'exploitation basés sur Linux et Unix. GNOME met l'accent sur l'ergonomie, l'accessibilité et l'expérience utilisateur. Il propose une interface utilisateur épurée et intuitive avec un lanceur d'applications, un gestionnaire de fichiers intégré et une multitude d'applications intégrées pour les activités quotidiennes telles que la navigation sur le Web, la gestion des courriels et la retouche d'images. GNOME est hautement personnalisable et extensible grâce à des extensions et des thèmes.
 
    **Sources :** [Le Site officiel de GNOME](https://www.gnome.org/) et [Le Site officiel de MATE Desktop](https://mate-desktop.org/)  

  &nbsp;  
* Qu’est-ce qu’un serveur web ?
    > Un serveur web est un logiciel informatique conçu pour recevoir, traiter et répondre aux requêtes HTTP (Hypertext Transfer Protocol) provenant des clients, généralement des navigateurs web, et pour fournir des ressources web, telles que des pages HTML, des images, des fichiers CSS et JavaScript, en réponse à ces requêtes.  
    En termes simples, un serveur web permet de rendre les sites web accessibles sur Internet.

    ![sch http](img/sch_http.png)
  
    **Source :** [Mozilla](https://developer.mozilla.org/fr/docs/Learn/Common_questions/Web_mechanics/What_is_a_web_server)
  &nbsp;  
* Qu’est-ce qu’un serveur ssh ?
    > Un serveur SSH (Secure Shell) est un logiciel qui permet à un utilisateur de se connecter de manière sécurisée à un ordinateur distant sur un réseau, généralement Internet.  
    Le protocole SSH fournit un moyen crypté et sécurisé pour accéder à des systèmes distants et exécuter des commandes à distance, transférer des fichiers et gérer des systèmes à distance.  

    ![sch ssh1](img/sch_ssh1.png)  
    ![sch ssh2](img/sch_ssh2.png)  

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
* Quel est la version du noyau Linux utilisé par votre VM ? N’oubliez pas, comme pour toutes les questions, de justifier votre réponse.
* À quoi servent les suppléments invités ? Donner 2 principales raisons de les installer.
* À quoi sert la commande mount (dans notre cas de figure et dans le cas général) ?  
  &nbsp;
  
### 4.2. Quelques Questions
* Qu’est-ce que le Projet Debian ? D’où vient le nom Debian ?
  >Le Projet Debian est une organisation communautaire qui développe le système d'exploitation Debian. Debian est une distribution Linux très populaire, connue pour sa stabilité, sa fiabilité et son engagement envers les principes du logiciel libre. Son nom "Debian" est une fusion des prénoms du fondateur du projet, Ian Murdock, et de celui de son épouse.  

  **Source :** [Debian.org](https://www.debian.org/doc/manuals/project-history/intro.fr.html#:~:text=La%20prononciation%20officielle%20de%20Debian,et%20de%20son%20épouse%2C%20Debra)

    &nbsp;  
  
* Il existe 3 durées de prise en charge (support) de ces versions : la durée minimale, la durée en support long terme (LTS) et la durée en support long terme étendue (ELTS). Quelle sont les durées de ces prises en charge ?
* Pendant combien de temps les mises à jour de sécurité seront-elles fournies ?
* Combien de version au minimum sont activement maintenues par Debian ? Donnez leur nom générique (= les types de distribution).
  > Debian maintient généralement trois versions en même temps : Stable : C'est la version principale et la plus récente, conçue pour être stable et fiable. C'est la version recommandée pour la plupart des utilisateurs, car elle bénéficie d'un support complet, y compris les mises à jour de sécurité et les correctifs de bogues.
Testing : Également connue sous le nom de "Testing", cette version est en cours de développement et contient des logiciels plus récents que la version stable, mais elle peut être moins stable car elle est sujette à des changements fréquents. Cette version est destinée aux utilisateurs qui souhaitent accéder aux dernières fonctionnalités et qui sont prêts à accepter un certain niveau de risque.  
Unstable : Aussi appelée "Unstable" ou "Sid", cette version est le terrain de jeu pour les développeurs Debian. Elle contient les dernières versions de logiciels qui sont en cours de préparation pour inclusion dans la prochaine version stable. Cette version est instable par nature et n'est pas recommandée pour une utilisation en production, mais elle est utile pour les tests et le développement.  

**Source :** [Debian.org](https://www.debian.org/releases/index.fr.html#:~:text=Debian%20a%20toujours%20au%20moins,%3A%20stable%20%2C%20testing%20et%20unstable%20)

  &nbsp;  
* Chaque distribution majeur possède un nom de code différent. Par exemple, la version majeur actuelle (Debian 12) se nomme bookworm. D’où viennent les noms de code données aux distributions ?
  > Les noms de code donnés aux distributions majeures de Debian (et à de nombreuses autres distributions Linux) sont généralement tirés des noms de personnages du film d'animation « Toy Story » de Pixar. Cela remonte aux premiers jours du projet Debian lorsque Ian Murdock, le fondateur de Debian, a décidé de nommer les versions de manière ludique et amusante. Les développeurs de Debian ont adopté cette tradition et continuent de nommer les versions de Debian d'après les personnages de Toy Story.

**Source :** [Dmtechnologies.com](https://www.dbmtechnologies.com/debian-versions)

  &nbsp;  
  
* L’un des atouts de Debian fut le nombre d’architecture (≈ processeurs) officiellement prises en charge. Combien et lesquelles sont prises en charge par la version Bullseye ?
  > 13 architecture -> amd64 (64-bit PC)
arm64 (ARM 64 bits)
armel (ARM Little Endian 32 bits)
armhf (ARM Hard Float 32 bits)
i386 (PC 32 bits)
mips (MIPS (big endian))
mips64el (MIPS (little endian))
ppc64el (PowerPC 64 bits Little Endian)
s390x (IBM System z)
riscv64 (RISC-V 64 bits)
m68k (Motorola 680x0)
alpha (DEC Alpha)
hppa (HP PA-RISC)  
  &nbsp;  

* Quelle a était le premier nom de code utilisé ?
  > Le premier nom de code utilisé pour une version de Debian était « Buzz ».  

  **Source :** [Wiki.debian.org](https://wiki.debian.org/fr/DebianBuzz)

    &nbsp;  
  
* Quand a-t-il été annoncé ?
  > Elle a été annoncé le 17 juin 1996  

  **Source :** [Wiki.debian.org](https://wiki.debian.org/fr/DebianBuzz)

    &nbsp;  

* Quelle était le numéro de version de cette distribution ?
  > C'est la version 1.1 de Debian.  

  **Source :** [Wiki.debian.org](https://wiki.debian.org/fr/DebianBuzz)

    &nbsp;  
  
* Quel est le dernier nom de code annoncée à ce jour ?
  &nbsp;  
* Quand a-t-il été annoncé ?
  &nbsp;  
* Quelle est la version de cette distribution ?  
  &nbsp;
  
### Question(s) 5. Ajustement de la pré-configuration
* Ajouter le droit d’utiliser sudo à l’utilisateur standard
  &nbsp;  
* Installer l’environnement MATE
  &nbsp;  
* Ajouter les paquets suivants :
     1. sudo : sinon la gestion sudo est inutile
     2. git, sqlite3, curl : pour préparer l’installation de la semaine prochaine
     3. bash-completion : va vous simplifier grandement l’écriture des lignes de commande
     4. neofetch : pas très utile mais c’est un classique dans son genre (essayez-le) 
---
**_partie Markdown_**  
blabla en crabe 🦀🦀🦀  
faite le tableau de marckdown en marckdown allez loulou tu peux le faire 
---
**_partie git_**
