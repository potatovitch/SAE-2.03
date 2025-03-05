#!/bin/bash

# install weasyprint
python3 -m venv venv
source venv/bin/activate
pip install weasyprint
weasyprint --info

# convert to html with pandoc
pandoc -s -c style.css rapport1.md rapport2.md -o rapport.html
# convert to pdf with pandoc using weasyprint as pdf engine
pandoc -s --pdf-engine=weasyprint -c style.css rapport1.md rapport2.md -o rapport.pdf
 