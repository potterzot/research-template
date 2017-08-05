all: clean paper readme

#CLEANING
#remove any intermediate files
clean:
	rm -f README.md output/application.pdf output/application.doc

#Project README
readme: README.Rmd
	R -e "rmarkdown::render('$(<F)')"

#OUTPUT
#Generate the paper
paper: output/article.Rmd output/library.bib output/chicago-author-date.csl
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'pdf_document')"
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'word_document')"

