### 2.1. Installons de Gitea
  * Qu’est-ce que Gitea ?
    > Gitea est git gui libre, gratuit et open-source écrit en Go (un language de programmation dévellopé par google et inspiré de C et Pascal) sous licence MIT.
    > il comporte :
    > 1. un système de suivi des bugs
    > 2. un wiki, ainsi que des outils pour la relecture de code
    > 3. un système d'extension, fournissant notamment de l'intégration continue ainsi que de la livraison continue.  
    > &nbsp;

    > Sa première version est sortie le 17 octobre 2016 et est toujours mis à jour régulièrement.  
    > Il est dévellopé par Jiahua Chen et Lunny Xiao et est disponible sur Windows, Mac et Linux.
    > Leur travail est déposé dans [ce repository](https://github.com/go-gitea/gitea).  
    > &nbsp;  


    > **Source :** [gitea.com](https://about.gitea.com/) et [wikipedia.org](https://fr.wikipedia.org/wiki/Gitea)  
    
      &nbsp; 
* À quels logiciels bien connus dans ce domaine peut-on le comparer ?
  > Dans ce même domaine on peut le comparer à GitHub et GitLab.

  *Source :* [gitea.com](https://docs.gitea.com/next/)  
&nbsp;
### 2.1. Installons de Gitea

  * 2.1.1. Installation du binaire  
    verifier que la version de git est **supérieur ou égal à la 2.0**  
    > `git --version`  

    #### On Ubuntu/Debian:  
    1. _Créer un user pour run gitea_  
      > `adduser \`  
      > `  --system \`  
      > `  --shell /bin/bash \`  
      > `  --gecos 'Git Version Control' \`  
      > `  --group \`  
      > `  --disabled-password \`  
      > `  --home /home/git \`  
      > `  git`  

    2. _Créer les répertoires pour gitea_  
      > `mkdir -p /var/lib/gitea/{custom,data,log}`  
      > `chown -R git:git /var/lib/gitea/`  
      > `chmod -R 750 /var/lib/gitea/`  
      > `mkdir /etc/gitea`  
      > `chown root:git /etc/gitea`  
      > `chmod 770 /etc/gitea`  

    3. _changer les permissions en read only après l'installation_  
      > `chmod 750 /etc/gitea`  
      > `chmod 640 /etc/gitea/app.ini`  

    4. _lancer gitea_
      > `GITEA_WORK_DIR=/var/lib/gitea/ /usr/local/bin/gitea web -c /etc/gitea/app.ini`  
      
    &nbsp;
### 2.1.2. Mise à jour du binaire du service Gitea
  * Quelle version du binaire avez-vous installé ? Donnez la version et la commande permettant d’obtenir cette information.
    > Pour connaitre la version, il faut utiliser `gitea --version` ou `gitea -v`  
    
  &nbsp;
  * Comment faire pour mettre à jour le binaire de votre service sans devoir tout reconfigurer ? Essayez en mettant à jour vers la version 1.22-dev.
    > Il faut remplacer le binaire de `/usr/local/bin/gitea` par la nouvelle version.
    > Ensuite, il faut relancer gitea avec `systemctl restart gitea`.  
    
  &nbsp;
