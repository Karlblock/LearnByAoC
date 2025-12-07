# Makefile pour le livre LearnByAoc

MAIN = main
LATEX = pdflatex
BIBTEX = bibtex

.PHONY: all clean view

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex chapters/*.tex
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex  # 2eme passe pour TOC
	$(LATEX) $(MAIN).tex  # 3eme passe pour refs

quick:
	$(LATEX) $(MAIN).tex

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.fls *.fdb_latexmk
	rm -f chapters/*.aux

distclean: clean
	rm -f $(MAIN).pdf

view: $(MAIN).pdf
	xdg-open $(MAIN).pdf &

# Compilation continue (necessite latexmk)
watch:
	latexmk -pdf -pvc $(MAIN).tex
