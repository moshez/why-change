#!/bin/sh
jupyter nbconvert why-change.ipynb --to markdown --TagRemovePreprocessor.remove_cell_tags='{"no_markdown"}'  --output build/why-change.md
pandoc -o build/why-change.tex build/why-change.md 
pip install git+https://github.com/moshez/moshez_middlefield_beamer.git
mf beamer --input build/why-change.tex --outdir build

