LATEXFLAGS=		-shell-escape
TEX_PYTHONTEX=	yes

.PHONY: all
all: article.pdf slides.pdf programs

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
SRC+=quiz.tex
SRC+=rspq.tex
SRC+=episodes.tex
SRC+=search-protocol.tex

# The appendix literate programs: woven into the article (the .tex files
# above), tangled into the quiz descriptions and the analysis programs.
NOWEB_SUFFIXES+=	.json

# Weave with syntax highlighting: the dbosk noweb fork's autolang/tominted
# filters typeset each chunk with minted (see the literate-programming
# skill).  The custom lexer keeps chunk references hyperlinked inside
# docstrings; it must sit where LaTeX runs, whitelisted by hash in
# ~/.config/latexminted.
NOWEAVEFLAGS.tex=	-n -delay -autolang -autodefs python3 -index \
			-filter 'tominted -lexer noweb_lexer.py'
NOWEB_LIB=	$(shell sed -n 's/^LIB=//p' "`command -v noweave`" | head -1)
noweb_lexer.py:
	cp ${NOWEB_LIB}/noweb_lexer.py $@
article.pdf: noweb_lexer.py

.PHONY: programs
programs: quiz-background.json quiz-knowledge-start.json \
	quiz-knowledge-end.json analyze_quiz.py analyze_episodes.py \
	make_rspq.py analyze_rspq.py rspq-start.json rspq-end.json \
	lookup_schools.py test_analyze_quiz.py \
	test_lookup_schools.py
quiz-background.json: quiz.nw
	${NOTANGLE.json}
quiz-knowledge-start.json: quiz.nw
	${NOTANGLE.json}
quiz-knowledge-end.json: quiz.nw
	${NOTANGLE.json}
analyze_quiz.py: quiz.nw
	${NOTANGLE.py}
lookup_schools.py: quiz.nw
	${NOTANGLE.py}
test_analyze_quiz.py: quiz.nw
	${NOTANGLE.py}
test_lookup_schools.py: quiz.nw
	${NOTANGLE.py}
analyze_episodes.py: episodes.nw
	${NOTANGLE.py}
make_rspq.py: rspq.nw
	${NOTANGLE.py}
analyze_rspq.py: rspq.nw
	${NOTANGLE.py}
# make_rspq.py writes both survey descriptions in one run.
rspq-start.json rspq-end.json &: make_rspq.py
	python3 make_rspq.py

# The tests of the analysis programs run without a test framework; see
# the appendix section on what identifies a student (quiz.nw).
.PHONY: test
test: analyze_quiz.py test_analyze_quiz.py
test: lookup_schools.py test_lookup_schools.py
	python3 test_analyze_quiz.py
	python3 test_lookup_schools.py

# The school register mirrors: one CSV per läsår from Skolverket's legacy
# SIRIS export API.  It is the only public source for the register as it
# stood in a given year, and its web interface is already decommissioned,
# so the committed files -- not this rule -- are the record; re-downloading
# is best-effort and may one day simply stop working.  `skolenheter'
# fetches what is missing and `skolenheter-refresh' re-fetches all of
# it; either way the recipe downloads to a temporary file and replaces
# a mirror only once the body looks like a SIRIS export, so a refresh
# that fails leaves the committed copy untouched.
SIRIS_EXPORT=	https://siris.skolverket.se/siris/reports/export_api/runexport/
# Per-läsår start years.  The grundskola range covers the stages of the
# whole cohort, students older than the nominal age included; the
# gymnasium range starts where the oldest of them could have started.
GRUNDSKOLA_YEARS=	2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 \
			2020 2021 2022
GYMNASIESKOLA_YEARS=	2015 2016 2017 2018 2019 2020 2021 2022 2023 2024
SKOLENHETER=	${GRUNDSKOLA_YEARS:%=skolenheter/grundskola-%.csv} \
		${GYMNASIESKOLA_YEARS:%=skolenheter/gymnasieskola-%.csv}

.PHONY: skolenheter
skolenheter: ${SKOLENHETER}

.PHONY: skolenheter-refresh
skolenheter-refresh:
	${MAKE} -B ${SKOLENHETER}

# A body that carries both the preamble's läsår line and the huvudman
# column is a SIRIS export; an error page is neither, and never reaches $@.
skolenheter/grundskola-%.csv: SIRIS_EXPORT_ID=6
skolenheter/gymnasieskola-%.csv: SIRIS_EXPORT_ID=136
SIRIS_QUERY=	pFormat=csv&pExportID=${SIRIS_EXPORT_ID}&pAr=$*&pFlikar=1
FETCH_SIRIS=	mkdir -p $(@D) && \
		curl -fsS --retry 3 --max-time 300 \
		  -o $@.tmp "${SIRIS_EXPORT}?${SIRIS_QUERY}" && \
		test -s $@.tmp && grep -q "Valt läsår" $@.tmp && \
		grep -q "Typ av huvudman" $@.tmp && mv $@.tmp $@
skolenheter/grundskola-%.csv:
	${FETCH_SIRIS}
skolenheter/gymnasieskola-%.csv:
	${FETCH_SIRIS}

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
	${RM} quiz.tex rspq.tex episodes.tex noweb_lexer.py
	${RM} quiz-background.json quiz-knowledge-start.json
	${RM} quiz-knowledge-end.json analyze_quiz.py analyze_episodes.py
	${RM} make_rspq.py analyze_rspq.py rspq-start.json rspq-end.json
	${RM} test_analyze_quiz.py lookup_schools.py
	${RM} test_lookup_schools.py

INCLUDE_MAKEFILES?=./makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
INCLUDE_DIDACTIC=./didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
