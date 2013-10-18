TEX=$(wildcard notes_week*tex)
PDF=$(TEX:.tex=.pdf)

all:${PDF}

${PDF}:%.pdf:%.tex macros.tex
	latexmk -pdf $<

clean:
	rm -rf ${PDF}
