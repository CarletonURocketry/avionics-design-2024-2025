LC = latexmk
TITLE = "CUInSpace Avionics Systems 2024 2025"
OUT = $(TITLE).pdf

MAIN = design.tex

all: $(OUT)

rebuild: clean all

$(OUT):
	@$(LC) -pdf -jobname=$(TITLE) $(MAIN)

clean:
	@$(LC) -C -jobname=$(TITLE)
	@rm indent.log
