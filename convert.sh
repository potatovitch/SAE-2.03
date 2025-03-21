#!/bin/bash

# install weasyprint
python3 -m venv venv
source venv/bin/activate
pip install weasyprint
weasyprint --info

# convert to html with pandoc
pandoc -s -c style.css rapport1.md rapport2.md rapport3.md -o rapport.html --toc -N
# convert to pdf with pandoc using weasyprint as pdf engine
pandoc -s --pdf-engine=weasyprint -c stylePDF.css  rapport1.md rapport2.md rapport3.md -o rapport.pdf --toc -N