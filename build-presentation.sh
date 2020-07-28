#!/bin/sh
set -e
jupyter nbconvert why-change.ipynb --to markdown --TagRemovePreprocessor.remove_cell_tags='{"no_markdown"}'  --output build/why-change.md
pandoc --listings -o build/why-change.tex build/why-change.md 
mf beamer --input build/why-change.tex --outdir build
(cd build && pdflatex talk.tex)
(cd build && pdflatex handout.tex)

