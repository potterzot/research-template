<!-- README.md is generated from README.Rmd. Please edit that file -->
[![ORCiD](https://img.shields.io/badge/ORCiD-0000--0002--3410--3732-green.svg)](http://orcid.org/0000-0002-3410-3732) [![Licence](https://img.shields.io/github/license/mashape/apistatus.svg)](http://choosealicense.com/licenses/mit/)

[![Last-changedate](https://img.shields.io/badge/last%20change-2017--08--04-brightgreen.svg)](https://github.com/potterzot/templates/commits/master)

templates
=========

Author
------

Nicholas Potter (<potterzot@gmail.com>)

Contents
--------

This is the github repository for templates used for research projects, articles, grant proposals, and presentations. The templates are heavily inspired by reproducible research templates such as rScience's [rrrpkg](https://github.com/ropensci/rrrpkg), Carl Boettiger's [research template](https://github.com/cboettig/template), Ben Marwick's [research compendium](https://github.com/benmarwick/researchcompendium) and Karl Broman's [Make tutorial](http://kbroman.org/minimal_make/). The templates make use of makefiles and R markdown to try to emphasize:

-   **reproducibility**: the final outputs should be easily reproducible, ideally with a single make command, so any changes to data, text, or sources are captured by the final outputs.

-   **version control**: git provides a record of all changes to the output so that changes to data and text can be traced if necessary and revisions are easy. Version control also allows for semantic simplicity, since there is no longer a need to create multiple "final\_a.pdf", "final\_2.pdf", etc... type files.

Requirements
------------

These templates should be fairly low-intensity in terms of requirements. [Rstudio](https://www.rstudio.com/) with [rmarkdown](http://rmarkdown.rstudio.com/) installed, and [make]() should be enough. Some of the actual R markdown templates may use additional R packages like [rticles](https://github.com/rstudio/rticles) or [lubridate](https://cran.r-project.org/web/packages/lubridate/index.html).

How to use this repository
--------------------------

Ideally, initialize a new git respository and then copy the specific template files into the repository. If you don't want to use git, you can also just copy the files into your project directory.

Contributing
------------

Contributions and ideas welcome! Ideas and suggestions can be submitted as [issues](). To make a code contribution, please for and then make a pull request.

Licenses
--------

Code: [MIT License](https://opensource.org/licenses/MIT), 2017, Nicholas A Potter
