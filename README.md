
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dose

[![R-CMD-check](https://github.com/resplab/dose/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/resplab/dose/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/resplab/dose/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/resplab/dose/actions/workflows/test-coverage.yaml)
[![codecov](https://codecov.io/gh/resplab/dose/branch/master/graph/badge.svg?token=EJ3XRXK0RB)](https://codecov.io/gh/resplab/dose)

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
$dose_index
[1] 2
```

