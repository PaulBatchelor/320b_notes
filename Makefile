.PHONY: run default

# THIRTEEN IS MISSING
NOTES = notes.tex 1.tex 2.tex 3.tex 4.tex 5.tex 6.tex 7.tex 8.tex 9.tex\
		10.tex 11.tex 12.tex 14.tex 15.tex 16.tex 17.tex 18.tex 19.tex \
		20.tex 21.tex 22.tex 23.tex 24.tex 25.tex 26.tex 27.tex 28.tex \
		29.tex 30.tex 31.tex 32.tex 33.tex

default: notes.pdf

notes.pdf: $(NOTES)
	pdflatex notes.tex

run: notes.pdf

clean:
	rm -rf *.pdf *.log *.aux
	
