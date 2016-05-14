
LYTEX=primo.lytex secondo.lytex
FILES=1.primo.ly 1.secondo.ly 2.primo.ly 2.secondo.ly

lbook=/Applications/LilyPond.app/Contents/Resources/bin/lilypond-book --pdf

all: primo.pdf secondo.pdf

primo.pdf: out/primo.tex
	cd out; pdflatex primo; pdflatex primo; pdflatex primo
	cp out/primo.pdf .

secondo.pdf: out/secondo.tex
	cd out; pdflatex secondo; pdflatex secondo; pdflatex secondo
	cp out/secondo.pdf .

out/primo.tex: $(LYTEX) $(FILES)
	$(lbook) --output=out --pdf primo.lytex

out/secondo.tex: $(LYTEX) $(FILES)
	$(lbook) --output=out --pdf secondo.lytex

clean:
	rm -fr out
