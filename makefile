
#To make a sample thesis, copy the contents of this directory
#somewhere, and type the following commands
	# latex sampleThesis.tex
	# latex sampleThesis.tex
	# input graphics in png format.

# Makefile for my changes.

all: clean sampleThesis.pdf clean
	git add .
	git commit -am "by make"

sampleThesis.pdf: abstract.tex certificate.tex chapter3.tex conclusion.tex paper.tex sampleThesis.tex acknowledgements.tex chapter2.tex chapter4.tex introduction.tex relatedPapers.tex titlePage.tex sampleBib.bib

	 pdflatex sampleThesis.tex
	 bibtex sampleThesis
	 pdflatex sampleThesis.tex
	 pdflatex sampleThesis.tex

clean:
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.pdf; fi
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.aux; fi
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.blg; fi
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.toc; fi
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.lot; fi
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.lof; fi
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.log; fi
	if [ -f sampleThesis.pdf ]; then rm sampleThesis.bbl; fi
