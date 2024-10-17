# LaTeX Compiler
LC = pdflatex
LCFLAGS = -quiet

# Glossary Compiler
GC = makeglossaries
GCFLAGS = -q

TITLE = CUInSpace Avionics Systems 2024 2025
OUT = $(TITLE).pdf

MAIN = design.tex

all: $(OUT)

rebuild: clean all

$(OUT):
	@$(LC) $(LCFLAGS) -jobname="$(TITLE)" $(MAIN)
	@$(GC) $(GCLFAGS) "$(TITLE)"
	@$(LC) $(LCFLAGS) -jobname="$(TITLE)" $(MAIN)

clean:
	@rm "$(TITLE)".*
	@rm indent.log
