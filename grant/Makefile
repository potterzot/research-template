all: clean ps rs readme

#CLEANING
#remove any intermediate files
clean:
	rm -f README.md output/*.pdf output/*.docx

#Project README
readme: README.Rmd
	R -e "rmarkdown::render('$(<F)')"

#OUTPUT
#Generate the paper
ps: output/personal_statement.Rmd output/library.bib output/chicago-author-date.csl
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'pdf_document')"
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'word_document')"

rs: output/research_statement.Rmd output/library.bib output/chicago-author-date.csl
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'pdf_document')"
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'word_document')"

