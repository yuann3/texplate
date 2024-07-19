PANDOC = pandoc
INPUT = paper.md
OUTPUT = my_report.pdf
PDF_ENGINE = xelatex
TEMPLATE = mytemplate.tex

all: $(OUTPUT)

$(OUTPUT): $(INPUT) $(TEMPLATE)
	$(PANDOC) $(INPUT) -o $(OUTPUT) --template=$(TEMPLATE) --pdf-engine=$(PDF_ENGINE)

clean:
	rm -f $(OUTPUT)

open: $(OUTPUT)
	open $(OUTPUT)

re: clean all

.PHONY: all clean open re


