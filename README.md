
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dose

<!-- badges: start -->

<!-- badges: end -->

The goal of dose is to calculate the DOSE index in COPD.

## Installation

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("resplab/dose")
```

## Example

This is a basic example which calculate the DOSE index, which is a derivation and validation of a composite index of severity in Chronic Obstructive Pulmonary Disease (COPD). The individual has the dyspnea scale of modified Medical Research Council (mMRC) 0, 55% forced expiratory volume in one second (FEV1), is a smoker, and had two exacerbations over the previous year. He/she would have DOSE score 2.

``` r
library(dose)
dose(mmrc=0, fev=55, smoking_status=1, exacerbation=2)
# > 2
```

