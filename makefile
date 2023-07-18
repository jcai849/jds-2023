.SUFFIXES: .pdf .tex .gv
.tex.pdf:
	latexmk ${.IMPSRC}
.gv.tex:
	dot2tex -ftikz --figonly --autosize  --usepdflatex ${.IMPSRC} >${.TARGET}

largescaler-jason-cairns.pdf: largescaler-jason-cairns.tex largescaler-jason-cairns.bib distobjref.tex dreduce.tex

clean:
	latexmk -C
