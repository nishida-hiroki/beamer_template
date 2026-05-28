TARGET ?= slide
LATEXMK ?= latexmk

.PHONY: all pdf watch check clean distclean

all: pdf

pdf:
	$(LATEXMK) -pdfdvi $(TARGET).tex

watch:
	$(LATEXMK) -pdfdvi -pvc $(TARGET).tex

check:
	$(LATEXMK) -version
	platex --version
	dvipdfmx --version
	kpsewhich beamer.cls
	kpsewhich pxjahyper.sty
	kpsewhich tikz.sty
	kpsewhich translator.sty

clean:
	$(LATEXMK) -c $(TARGET).tex

distclean:
	$(LATEXMK) -C $(TARGET).tex
