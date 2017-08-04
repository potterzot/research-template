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


#Project README
readme: README.Rmd rpkg/README.Rmd
	#R -e "knitr::knit('README.Rmd')"
	R -e "rmarkdown::render('$(<F)')"
	cd rpkg; R -e "rmarkdown::render('$(<F)')"

#Generate the paper
paper: analysis/paper.Rmd analysis/library.bib analysis/chicago-author-date.csl
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'all')"
