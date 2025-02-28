#!/bin/bash

# install weasyprint
python3 -m venv venv
source venv/bin/activate
pip install weasyprint
weasyprint --info

# convert to html with pandoc
pandoc -o rapport.html rapport1.md rapport2.md;
# convert to pdf with pandoc using weasyprint as pdf engine
pandoc -o rapport.pdf --pdf-engine=weasyprint rapport1.md rapport2.md;