all: clean tesis.pdf

pdf: tesis.pdf

tesis.pdf: tesis.tex
	pdflatex tesis.tex
	bibtex tesis.aux
	pdflatex tesis.tex
	pdflatex tesis.tex
	gvfs-open tesis.pdf &
	rm -f *.bbl *.blg *.brf *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.lof *.lot

clean:
	rm -f *.bbl *.blg *.brf *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.lof *.lot tesis.pdf
