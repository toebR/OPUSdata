<!-- badges: start -->
[![R-CMD-check](https://github.com/toebR/OPUSdata/workflows/R-CMD-check/badge.svg)](https://github.com/toebR/OPUSdata/actions)
<!-- badges: end -->


# OPUSdata
R package to read .dpt extraction files from OPUS software and execute data engineering tasks.


## Introduction
This package is built for internal use. It holds functions that help to handle .dpt outputs from LUMOS II spectral data. It will be continously built-up to support transformation and analysis of other outputs such as particle stats etc.

## Installation
The package is not yet on CRAN so you can install it from github and load it into your session by running the following lines:</br>
*(You have to have "Rtools" installed on your computer to install R packages from Github..)*

```r
remotes::install_github("toebR/OPUSdata")
library(OPUSdata)
```

##Functions

### read_dpt()
This function reads a .dpt file and returns a list object holding the data.

```r
spectra <- read_dpt(r"(path\to\file.dpt)")

#example output, V1 = wavelength/cm
>        V1       V2       V3       V4       V5       V6       V7       V8      V9     V10      V11      V12      V13
1 3997.266 -0.26139 -0.17894 -0.21055 -0.18488 -0.23896 -0.22172 -0.21944 -0.2503 -0.2062 -0.21844 -0.24292 -0.06631
```

### spectra_to_long()
Reads a list object (as from read_dpt()) and transforms it to a tibble in long format (tidy)

```r

```

##Example

