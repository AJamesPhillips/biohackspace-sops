#
#BIO02001

DOCS := index bio01001 bio02001 bio03001 bio04001 bio04002 bio04003 bio04004 bio04005 bio04006 bio04007 bio04008 bio05001 bio06001 bio06002 bio07001 bio07002 bio07003 bio07004 bio07005 bio08001 bio08002 bio08003 bio09001 bio10001 biolab-rules biolab-usage-guidelines cl1-risk-assessment-template

PANDOC_OPTS := --number-sections --latex-engine=xelatex

towikiname = $(basename $(shell echo $(1) | tr '[:lower:]' '[:upper:]'))

cl1: $(addsuffix .pdf,$(DOCS))

wiki: dirs $(addsuffix .wiki,$(DOCS))

index.pdf: index.rst
	pandoc $< -o $@

%.pdf: %.rst
	pandoc $(PANDOC_OPTS) $< -o $@


%.wiki: %.rst
	pandoc -t mediawiki $(PANDOC_OPTS) $< -o mwiki/$@

dirs:
	mkdir -p mwiki
