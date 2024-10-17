# LaTeX Compiler
LC = pdflatex

# Glossary Compiler
GC = makeglossaries

TITLE = CUInSpace Avionics Systems 2024 2025
OUT = $(TITLE).pdf

MAIN = design.tex

all: $(OUT)

rebuild: clean all

$(OUT):
	@$(LC) -jobname="$(TITLE)" $(MAIN)
	@$(GC) "$(TITLE)"
	@$(LC) -jobname="$(TITLE)" $(MAIN)

clean:
	@rm "$(TITLE)".*
	@rm indent.log
