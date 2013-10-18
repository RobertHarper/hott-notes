TEX=$(wildcard notes_week*tex)
PDF=$(TEX:.tex=.pdf)

all:${PDF}

${PDF}:%.pdf:%.tex
	latexmk -pdf $^

clean:
	rm -rf ${PDF}
