OUTDIR := doc
OUTEXT := .pdf
PANDOCOPTS := \
  --highlight-style=tango \
  --latex-engine=xelatex \
  --variable mainfont="Times New Roman" \
  --variable monofont=Menlo
INPUTFILES := \
  index.md \
  part01.md \
  part02.md \
  part03.md \
  part04.md

${OUTDIR}/notes${OUTEXT}: ${INPUTFILES}
	pandoc ${PANDOCOPTS} -s -o $@ $^

.PHONY: clean
clean:
	rm -rf ${OUTDIR}/notes${OUTEXT}
