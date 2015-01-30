#!/bin/sh

platex paper.tex

bibtex paper.aux

platex paper.tex

platex paper.tex

dvipdfmx paper.dvi

open paper.pdf
