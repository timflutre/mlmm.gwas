<-- pandoc README.md -t html -s -o README.html --toc --metadata pagetitle="mlmm.gwas" --!>

This directory contains the source of the R package [`mlmm.gwas`](https://cran.r-project.org/package=mlmm.gwas) version 1.0.5 as downloaded as a `tar.gz` from the CRAN on July 16, 2019.
A few files (in `man-roxygen`) sent by the maintainer C. Mabire were added to be able to re-make the documentation.

Changes by T. Flutre:

- add parameter `lambda` to function `eBIC_allmodels`

For users:

- install via `devtools::install_github("timflutre/mlmm.gwas")`

For developpers:

- first, make documentation automatically with roxygen2 via `devtools::document()'`
- then, build the package (in cmd-line via `R CMD build mlmm.gwas`)
- and check it (in cmd-line via `R CMD check mlmm.gwas_1.0.5.tar.gz`)
- finally, install it (in cmd-line via `R CMD INSTALL mlmm.gwas_1.0.5.tar.gz`)
