.SUFFIXES: .pdf .tex
.tex.pdf:
	latexmk ${.IMPSRC}

largescaler-jason-cairns.pdf: largescaler-jason-cairns.tex largescaler-jason-cairns.bib

clean:
	rm -f *.aux *.bbl *latexmk *.fls *.log *.out *synctex* largescaler-jason-cairns.pdf
