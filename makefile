.SUFFIXES: .tex .gv
.gv.tex:
	dot2tex -ftikz --figonly --autosize  --usepdflatex ${.IMPSRC} >${.TARGET}

paper.pdf: paper.tex paper.bib distobjref.tex dreduce.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f *.bbl
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.fls
	rm -f *.log
	rm -f *.out
	rm -f *.synctex.gz
