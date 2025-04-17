all: slides.pdf

%.pdf: %.tex
	pdflatex $<
	bibtex $(patsubst %.tex,%,$<)
	pdflatex $<
	pdflatex $<
