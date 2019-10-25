.PHONY: compile all clean

all: compile

compile: src/example.tex
	cd src ; latexmk -pdf -pdflatex="pdflatex" -use-make example.tex

clean:
	cd src ; latexmk -CA
