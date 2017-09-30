all: clean doc test paper readme

#remove any intermediate files
clean:
	rm -f README.md

#document the package
doc:
	cd rpkg; R -e 'devtools::document()'

#build and install the package
install: doc
	cd rpkg; R CMD check .
	cd rpkg; R CMD INSTALL .

#OUTPUT
%.pdf: %.Rmd output/library.bib output/chicago-author-date.csl
	cd $(<D) && R -e "rmarkdown::render('$(<F)', 'pdf_document')"

%.html: %.Rmd output/library.bib output/chicago-author-date.csl output/style.css
	R -e "rmarkdown::render('$(<F)', 'html_document')"

%.md: %.Rmd output/library.bib output/chicago-author-date.csl
	R -e "rmarkdown::render('$(<F)', 'md_document')"

#Generate the paper
readme: README.md
#plan: output/research_plan.pdf output/research_plan.md
proposal: output/proposal.pdf output/proposal.Rmd
paper: output/paper/paper.pdf output/paper/paper.Rmd output/library.bib output/chicago-author-date.csl

#Generate the paper
paper: output/paper/paper.Rmd output/library.bib output/chicago-author-date.csl
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'all')"
