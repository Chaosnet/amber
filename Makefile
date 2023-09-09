MAKEINFO ?= makeinfo

TEXISRC = amber.texi

.DEFAULT: all

.PHONY: all all-info all-pdf all-html
all: all-info all-pdf all-html
all-info: $(patsubst %.texi,%.info, $(TEXISRC))
all-pdf: $(patsubst %.texi,%.pdf, $(TEXISRC))
all-html: $(patsubst %.texi,%.html, $(TEXISRC))

%.info: %.texi
	$(MAKEINFO) -o $@ $^

%.pdf: %.texi
	$(MAKEINFO) --pdf -o $@ $^

%.html: %.texi
	$(MAKEINFO) --html --no-split --set-customization-variable 'USE_TITLEPAGE_FOR_TITLE 1' --css-ref "janix-texinfo.css" --css-include=amber.css  -o $@ $^

.PHONY: clean
clean:
	rm -f *.info
	rm -f *.pdf
	rm -f *.html
	rm -f *.aux *.fn *.fns *.log *.op *.ops *.toc *.vr *.vrs
