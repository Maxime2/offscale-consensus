tex = pdflatex
src = src/offscale-consensus.tex
doc = offscale-consensus.pdf

all: $(doc)

$(doc): $(src)
	$(tex) $< -o $@
	$(tex) $< -o $@ # This second pass is required for the references.

.PHONY: clean

clean:
	rm $(doc)
