TEX=$(wildcard notes_week*tex) cancellation.tex
PDF=$(TEX:.tex=.pdf)

all:${PDF}

${PDF}:%.pdf:%.tex macros.tex
	latexmk -pdf $<

clean:
	latexmk -C ${TEX}
