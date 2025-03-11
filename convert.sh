#!/bin/bash

# install weasyprint
python3 -m venv venv
source venv/bin/activate
pip install weasyprint
weasyprint --info

# convert to html with pandoc
pandoc -s -c style.css rapport1.md rapport2.md rapport3.md -o rapport.html --toc -N
# convert to pdf with pandoc using weasyprint as pdf engine
<<<<<<< HEAD
pandoc -s --pdf-engine=weasyprint -c style.css rapport1.md rapport2.md rapport3.md -o rapport.pdf --toc -N
=======
pandoc -s --pdf-engine=weasyprint -c style.css rapport1.md rapport2.md -o rapport.pdf --toc
 
# -N : number dans toc
>>>>>>> 287e4b9a926ee3658662c99fc05b3ad5f96670fc
