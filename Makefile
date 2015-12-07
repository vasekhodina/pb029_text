NAME=homework
SHELL=/bin/bash
.PHONY: all clean prep-pdf pdf bibliografie mpobrazek rejstrik

prep-pdf:
	pdflatex ${NAME}.tex

pdf: ${NAME}.tex
	pdflatex ${NAME}.tex

bibliografie: ${NAME}.tex prep-pdf bibliografie.bib
	biber ${NAME}

rejstrik: ${NAME}.tex prep-pdf
	texindy -I latex -L czech  ${NAME}.idx

mpobrazek: obrazek.mp
	mpost -tex=latex obrazek.mp

all: mpobrazek prep-pdf bibliografie rejstrik pdf 

clean: 
	-rm ${NAME}.{aux,log,pdf,bbl,bcf,blg,idx,ind,out,run.xml} obrazek.log obrazek.mps

${NAME}.pdf: ${NAME}.tex bibliografie mpobrazek
	pdflatex ${NAME}.tex
