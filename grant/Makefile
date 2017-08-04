all: clean_all data_all doc test paper readme

#CLEANING
#remove any intermediate files
clean:
	rm -f README.md rpkg/README.md

#remove all intermediate files, including data
clean_data:
	rm -f data/raw/* data/proc/* data/final/*

clean_all: clean clean_data


#DATA
#generate new data without downloading new data
data_raw: clean_data
	Rscript code/data/raw/get_nass_qs.R all
	Rscript code/data/raw/get_census.R all
	Rscript code/data/raw/get_county_centroids.R

data_proc:
	Rscript code/data/proc/clean_nass.R
	Rscript code/data/proc/clean_census.R
	Rscript code/data/proc/combine_county_variables.R

data_all: data_get data



#TESTS
test:

#DOCUMENTATION
#document the package
doc:
	cd rClimateImpact; R -e 'devtools::document()'


#Project README
readme: README.Rmd
	R -e "rmarkdown::render('$(<F)')"



#OUTPUT
#Generate the paper
paper: output/paper/paper.Rmd output/library.bib
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'rticles::aea_article')"
	cd $(<D); R -e "rmarkdown::render('$(<F)', 'word_document')"



#R PACKAGE
#build and install the package
install: doc
	cd rpkg; R CMD check .
	cd rpkg; R CMD INSTALL .

