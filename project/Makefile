all: clean_all data doc test paper readme

%.pdf: %.Rmd output/library.bib
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'pdf_document')"

%.md: %.Rmd output/library.bib
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'markdown_document')"

%.html: %.Rmd output/library.bib
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'html_document')"

### CLEANING
#remove any intermediate files
clean:
	rm -f README.md rpkg/README.md

clean_all: clean

###### DATA

get_data:
	Rscript src/data/get_data.R

proc_data:
	Rscript src/data/proc_data.R

soil: get_data proc_data

## All Data combined


###### R PACKAGE

doc: $(wildcard rpkg/R/*.R)
	R -e 'devtools::document(pkg = "rpkg/")'

install: 
	R -e 'devtools::document(pkg = "rpkg/")'
	R -e 'devtools::install(pkg = "rpkg/")'


##### OUTPUT

readme: README.md

#Generate the paper
presentation: output/pre-presentation/half-baked.html
output/pre-presentation/half-baked.html: output/pre-presentation/half-baked.Rmd
	cd $(<D); R -e "rmarkdown::render('$(<F)')"

paper: output/paper/paper.pdf
output/paper/paper.pdf: output/paper/paper.Rmd output/library.bib
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'rticles::aea_article')"
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'word_document')"
	cd $(<D); R -e "researchTools::find_weasels('$(<F)', outfile='weasels.txt')"

