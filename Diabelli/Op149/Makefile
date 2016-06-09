
LYTEX=primo.lytex secondo.lytex
FILES=1.primo.ly  1.secondo.ly  2.primo.ly  2.secondo.ly \
      3.primo.ly  3.secondo.ly  4.primo.ly  4.secondo.ly \
      5.primo.ly  5.secondo.ly  6.primo.ly  6.secondo.ly \
      7.primo.ly  7.secondo.ly  8.primo.ly  8.secondo.ly \
      9.primo.ly  9.secondo.ly 10.primo.ly 10.secondo.ly \
     11.primo.ly 11.secondo.ly 12.primo.ly 12.secondo.ly \
     13.primo.ly 13.secondo.ly 14.primo.ly 14.secondo.ly \
     15.primo.ly 15.secondo.ly 16.primo.ly 16.secondo.ly \
     17.primo.ly 17.secondo.ly 18.primo.ly 18.secondo.ly \
     19.primo.ly 19.secondo.ly 20.primo.ly 20.secondo.ly \

XLATEX=latex -interaction=batchmode
LATEX=latex

lbook=/Applications/LilyPond.app/Contents/Resources/bin/lilypond-book

all: primo.pdf secondo.pdf

out/primo.dvi: out/primo.tex
	cd out; $(LATEX) primo; $(LATEX) primo; $(LATEX) primo

out/secondo.dvi:  out/secondo.tex
	cd out; $(LATEX) secondo; $(LATEX) secondo; $(LATEX) secondo

primo.pdf: out/primo.dvi
	cd out; dvipdf primo.dvi; mv primo.pdf ..

secondo.pdf: out/secondo.dvi
	cd out; dvipdf secondo.dvi; mv secondo.pdf ..

out/primo.tex: $(LYTEX) $(FILES)
	$(lbook) --output=out primo.lytex

out/secondo.tex: $(LYTEX) $(FILES)
	$(lbook) --output=out secondo.lytex

clean:
	rm -fr out
