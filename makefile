# makefile for master paper
.SUFFIXES: .tex .dvi .pdf
TEX = latex
TEXFLAGS = #-interaction=batchmode
TARGET = paper

.tex.dvi:
		$(TEX) $(TEXFLAGS) $<
.dvi.pdf:
		dvipdfmx $<

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).dvi
$(TARGET).dvi: $(TARGET).tex

clean:
		$(RM) *.blg *.run.xml *.bbl *.bcf *.dvi *.aux *.log *.pdf *.lot *.lof *.out *.toc
