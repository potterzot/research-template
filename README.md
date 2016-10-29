<!-- README.md is generated from README.Rmd. Please edit that file -->
Paper-Open-Source
-----------------

This paper will do some economic analysis of open source, open science, and sharing economies.

How to use this package
-----------------------

There are two potential ways to use this package:

1.  Use it as an example of a [reproducible research]() project from which to base your own work. In that case a better alternative might be my [r-research-compendium](github.com/potterzot/r-research-compendium) package, which provides a skeleton package.
2.  Fork the repository and do what you will with it (contributions welcome!).
3.  Use it to access the data necessary to reproduce my findings. Example data installed with the package is in [data](data), while the full project data is available in [analysis/data](analysis/data).
4.  Install it as an `R` package, which will provide access to the analytical functions, example data, and other aspects of the package. You can do that using `devtools` as follows:

`{r eval=FALSE      install.packages("devtools")     library("devtools")     install_github("potterzot/r-research-compendium", build_vignettes=TRUE)     library("r-research-compendium")`
