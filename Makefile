all: lang.pdf

lang.pdf: lang.tex
	pdflatex $<

lang.tex: lang.ott
	ott -i $< -o $@
clean:
	-rm lang.tex lang.pdf lang.aux lang.log

.PHONY: all
