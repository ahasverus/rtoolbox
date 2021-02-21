
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rtoolbox

<!-- badges: start -->

[![R-CMD-check](https://github.com/ahasverus/rtoolbox/workflows/R-CMD-check/badge.svg)](https://github.com/ahasverus/rtoolbox/actions)
[![CRAN
status](https://www.r-pkg.org/badges/version/rtoolbox)](https://CRAN.R-project.org/package=rtoolbox)
[![License: GPL
v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
[![LifeCycle](man/figures/lifecycle-experimental.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

A collection of miscellaneous R functions for everyday life.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ahasverus/rtoolbox")
```

## Usage

First attach the package `rtoolbox`:

``` r
library("rtoolbox")
```

Here is an overview of `rtoolbox` functions:

``` r
## Identify local git repositories for which changes need to be committed ----

git_to_commit(path = "~/GitHub")


## Detect and add R dependencies (packages) in DESCRIPTION file ----

add_dependencies()                          # R package
add_dependencies(import = "analysis/")      # Research compendium
?add_dependencies                           # For more information
```

## Citation

Please cite this package as:

> Casajus N. (2021) rtoolbox: Utilitaries R Functions. R package version
> 1.0.0.

## Code of Conduct

Please note that the `rtoolbox` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

Cheers!
