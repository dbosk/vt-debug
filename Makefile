LATEXFLAGS=		-shell-escape
TEX_PYTHONTEX=	yes

.PHONY: all
all: article.pdf slides.pdf

SRC+=theory.bib
SRC+=debugging.bib
SRC+=preamble.tex

SRC+=introduction.tex
SRC+=background.tex

SRC+=debugging-as-learning.tex
SRC+=debugging.tex

SRC+=method.tex

SRC+=results.tex
SRC+=related-work.tex
SRC+=discussion.tex
SRC+=conclusions.tex
SRC+=search-protocol.tex

# The C++ counterexample's output is compiled and captured at build time so
# the paper shows real output, same as the PythonTeX examples.
DEPENDS+=	examples/experiment5.out
examples/experiment5.out: examples/experiment5.cpp
	g++ -o examples/experiment5 examples/experiment5.cpp
	./examples/experiment5 > $@

DEPENDS+=	figs/contrast-color.tikz
DEPENDS+=	figs/generalization-color.tikz
DEPENDS+=	figs/fusion-color.tikz

DEPENDS+=	didactic.sty

article.pdf: article.tex ${SRC} ${DEPENDS}
slides.pdf: slides.tex ${SRC} ${DEPENDS}

# PythonTeX's cus_dep lives in makefiles/latexmkrc (committed in the submodule);
# latexmk loads it via the root `latexmkrc` symlink.  Depend on it so tex.mk
# creates that symlink on a fresh clone -- without it pythontex never runs and the
# PDF shows "?? PythonTeX ??".
article.pdf slides.pdf: latexmkrc

.PHONY: clean
clean:
	latexmk -C
	${RM} article.bbl article.run.xml

INCLUDE_MAKEFILES?=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_DIDACTIC=./didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
