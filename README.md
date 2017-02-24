Biomakespace SOPs
=====================

Build instructions
------------------

To build these you will need Pandoc 1.13 or higher (many Linux distros only have 1.12). Download an installer for your OS here:

http://johnmacfarlane.net/pandoc/installing.html

You'll also need pdflatex, which is part of texlive, and the texlive fonts.

Then type

	make cl1

to build.

Phrasing Styleguide
-------------------

"Containment level 1" is abreviated to "CL1".

"Cambridge Biomakespace" or "Biomakespace" is referred to as "the lab" or "BioLab" throughout.

The "Biomakespace Standard Operating Procedures" are referred to as "the SOPs" or "BioLab SOPs" throughout.

The "Biomakespace Rules" or "Lab Rules" are referred to as "the rules" throughout.

Formating StyleGuide
--------------------

Headings:

	====================
	BIOMXXXXX - SOP Title
	====================

	Section Heading
	===============

	Subsection Heading
	------------------

	Subsubsection Heading (if you really need it)
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Italic:

	*italic text*

Bold:

	**bold text**

Definitions:

	Term to be explained
		Definition goes here (can be multiline).

Line breaks without new paragraph:

	| a line of text
	| a line of text directly underneath

Refering to other sections within the same SOP:

	`Other Section <#other-section>`__ (above/below)

Refering to other SOPs (all other SOPs referenced should be listed in the related documents section):

	`BIOXXXXX <BIOXXXXX.rst>`__

Refering to external sources:

	`External Source <http://external.com/source>`__ [#]_

	then below that paragraph:

	.. [#] http://external.com/source
