
#To make a sample thesis, copy the contents of this directory
#somewhere, and type the following commands
	# latex sampleThesis.tex
	# latex sampleThesis.tex
	# input graphics in png format.

# Makefile for my changes.

sampleThesis.pdf: abstract.tex certificate.tex chapter3.tex conclusion.tex paper.tex sampleThesis.tex acknowledgements.tex chapter2.tex chapter4.tex introduction.tex relatedPapers.tex titlePage.tex

	 pdflatex sampleThesis.tex
	 bibtex sampleThesis
	 pdflatex sampleThesis.tex

clean:
	rm sampleThesis.pdf
	rm sampleThesis.aux
	rm sampleThesis.blg
	rm sampleThesis.toc
	rm sampleThesis.lot
	rm sampleThesis.lof
	rm sampleThesis.log
