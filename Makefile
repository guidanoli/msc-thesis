PDFLATEX = pdflatex -interaction nonstopmode
BIBTEX = bibtex
PROJECTS = main slides

all: $(PROJECTS)

$(PROJECTS):
	@$(PDFLATEX) $@
	@$(BIBTEX) $@
	@$(PDFLATEX) $@
	@$(PDFLATEX) $@

.PHONY: $(PROJECTS)
