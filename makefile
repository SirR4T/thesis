
#To make a sample thesis, copy the contents of this directory
#somewhere, and type the following commands
sampleThesis.pdf: abstract.tex certificate.tex chapter3.tex conclusion.tex paper.tex sampleThesis.tex acknowledgements.tex chapter2.tex chapter4.tex introduction.tex relatedPapers.tex titlePage.tex

	 pdflatex sampleThesis.tex
	# latex sampleThesis.tex
	 bibtex sampleThesis
	 pdflatex sampleThesis.tex
	# latex sampleThesis.tex
	# input graphics in png format.

clean:
	rm sampleThesis.pdf
