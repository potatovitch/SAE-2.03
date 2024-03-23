Avant de convertir le fichier avec pandoc, il faut d'abord installer pdflatex et weasyprint  

> `sudo apt install texlive-latex-base`  
> `sudo apt install weasyprint`  

Ensuite, pour convertir le fichier en html/pdf, on utilise les commandes :

> `pandoc rapport.md -o rapport.html`  
> `pandoc rapport.md -o rapport.pdf --pdf-engine=weasyprint`  
