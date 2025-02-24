# Rapport semaine 1

## Préparation d'une machine virtuelle Debian 

- Que signifie "64-bit" dans "Debian 64-bit" ?  
> 64-bit fait référence à l'architecture du processeur capable de traiter des données sur 64 bits à la fois, permettant notamment d'adresser plus de mémoire RAM que les systèmes 32-bit.
> [**source**](https://www.debian.org/releases/stable/amd64/ch02s01.fr.html)

- Quelle est la configuration réseau utilisée par défaut ?  
> NAT (Network Address Translation) est la configuration réseau par défaut dans VirtualBox. Elle permet à la VM d'accéder à Internet via l'ordinateur hôte.
> [**source**](https://www.virtualbox.org/manual/ch06.html#network_nat)

- Quel est le nom du fichier XML contenant la configuration de votre machine ?  
> Le fichier de configuration se trouve dans `~/.config/VirtualBox/VirtualBox.xml`
> [**source**](https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxconfigdata.html)

- Sauriez-vous modifier directement ce fichier de configuration pour mettre 2 processeurs à votre machine ?  
> Oui, dans le fichier XML, il faut modifier la balise `<CPU count="1">` en `<CPU count="2">`
> [**source**](https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxmanage-modifyvm.html)

- Qu'est-ce qu'un fichier iso bootable ?  
> C'est une image disque contenant un système d'exploitation qui peut démarrer directement au lancement de la machine.
> [**source**](https://www.debian.org/CD/faq/#what-is)

- Qu'est-ce que MATE ? GNOME ?  
> [**source**]()  
- Qu’est-ce qu’un serveur ssh ?  
>
> [**source**]()  
- Qu’est-ce qu’un serveur mandataire ?  
>
> [**source**]()  

## Préparation du système
Comment peux-ton savoir à quels groupes appartient l’utilisateur user ?  
>
> [**source**]()  
- Quel est la version du noyau Linux utilisé par votre VM ? N’oubliez pas, comme pour toutes les
questions, de justifier votre réponse.  
>
> [**source**]()  
- À quoi servent les suppléments invités ? Donner 2 principales raisons de les installer.  
>
> [**source**]()  
- À quoi sert la commande mount (dans notre cas de figure et dans le cas général) ?  
>
> [**source**]()  

## À propos de la distribution Debian

1. Qu’est-ce que le Projet Debian ? D’où vient le nom Debian ?  
La maintenance  
>
> [**source**]()  
3. Il existe 3 durées de prise en charge (support) de ces versions : la durée minimale, la durée en
support long terme (LTS) et la durée en support long terme étendue (ELTS). Quelle sont les
durées de ces prises en charge ?  
>
> [**source**]()  
4. Pendant combien de temps les mises à jour de sécurité seront-elles fournies ?  
Nom générique, nom de code et version  
>
> [**source**]()  
6. Combien de version au minimum sont activement maintenues par Debian ? Donnez leur nom  
générique (= les types de distribution).  
>
> [**source**]()  
7. Chaque distribution majeur possède un nom de code différent. Par exemple, la version majeur  
actuelle (Debian 12) se nomme bookworm. D’où viennent les noms de code données aux  
distributions ?  
>
> [**source**]()  
9. L’un des atouts de Debian fut le nombre d’architecture (≈ processeurs) officiellement prises en  
charge. Combien et lesquelles sont prises en charge par la version Bullseye ?  
>
> [**source**]()  
10. Première version avec un nom de code  
- Quelle a était le premier nom de code utilisé ?  
>
> [**source**]()  
- Quand a-t-il été annoncé ?  
>
> [**source**]()  
- Quelle était le numéro de version de cette distribution ?  
>
> [**source**]()  
12. Dernière nom de code attribué  
- Quel est le dernier nom de code annoncée à ce jour ?  
>
> [**source**]()  
- Quand a-t-il été annoncé ?  
> 
> [**source**]()  
- Quelle est la version de cette distribution ?  
>
> [**source**]()  
