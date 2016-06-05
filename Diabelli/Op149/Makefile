
LYTEX=primo.lytex secondo.lytex
FILES=1.primo.ly 1.secondo.ly 2.primo.ly 2.secondo.ly \
      3.primo.ly 3.secondo.ly 4.primo.ly 4.secondo.ly \
      5.primo.ly 5.secondo.ly 6.primo.ly 6.secondo.ly \
      7.primo.ly 7.secondo.ly 8.primo.ly 8.secondo.ly \
      9.primo.ly 9.secondo.ly

lbook=/Applications/LilyPond.app/Contents/Resources/bin/lilypond-book

all: primo.pdf secondo.pdf

out/primo.dvi: out/primo.tex
	cd out; latex primo; latex primo; latex primo

out/secondo.dvi:  out/secondo.tex
	cd out; latex secondo; latex secondo; latex secondo

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
