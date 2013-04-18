#!/bin/bash
# Generate documentation of a package

rm -rf img
mkdir img
gmic -v - raw:jboulanger.gmic,uchar -v + -document_gmic html,"img/" 2> doc.html
gmic -v - raw:jboulanger.gmic,uchar -v + -document_gmic latex,"img/" 2> doc.tex
pdflatex doc.tex
