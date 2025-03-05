# README SAE2.03

## Convertion des rapports

Pour convertir les rapports, il faut utiliser les commandes :

```bash
chmod u+x ./convert.sh      # donne les droits d'execution 
./convert.sh                # execute convert.sh
```

## Que contient convert.sh ?

convert.sh est scindé en deux parties, une partie pour installer weasyprint, le pdf-engine utilisé pour la convertion du rapport du markdown vers le pdf.
L'autre partie utilise pandoc et weasyprint pour convertir les rapports en un rapport en html et un autre en pdf.

## autre

[repo github du projet](https://github.com/potatovitch/SAE-2.03)
