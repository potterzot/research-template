all: clean readme grant_readme presentation_readme article_readme project_readme

#CLEANING
#remove any intermediate files
clean:
	rm -f README.md grant/README.md presentation/README.md article/README.md project/README.md

#README
readme: README.Rmd
	R -e "rmarkdown::render('$(<F)')"

grant_readme: grant/README.Rmd
	cd $(<D);	R -e "rmarkdown::render('$(<F)')"

presentation_readme: presentation/README.Rmd
	cd $(<D);	R -e "rmarkdown::render('$(<F)')"

article_readme: article/README.Rmd
	cd $(<D);	R -e "rmarkdown::render('$(<F)')"

project_readme: project/README.Rmd
	cd $(<D);	R -e "rmarkdown::render('$(<F)')"

