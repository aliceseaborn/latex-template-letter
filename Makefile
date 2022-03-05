# Makefile

# ----------------------------------------* CONFIGURATION
SHELL=/bin/bash
FILENAME=document


# ----------------------------------------* DEFAULT
all: render clean


# ----------------------------------------* RENDERING
render:
	pdflatex ${FILENAME}.tex
	pdflatex ${FILENAME}.tex


# ----------------------------------------* CLEANING
clean: clean-meta

clean-meta:
	rm -f ${FILENAME}.{log,out,aux}
