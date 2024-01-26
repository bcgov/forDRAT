
- [bcgov/forDRAT: BC forest drought risk assessment
  tool](#bcgovfordrat-bc-forest-drought-risk-assessment-tool)
  - [Overview](#overview)
  - [Installation](#installation)
  - [Introduction](#introduction)
  - [Additional details](#additional-details)
    - [Literature cited](#literature-cited)

<!--
Copyright 2024 Province of British Columbia
&#10;Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
&#10;http://www.apache.org/licenses/LICENSE-2.0
&#10;Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the License.
-->
<!-- Edit the README.Rmd only!!! The README.md is generated automatically from README.Rmd. -->

# bcgov/forDRAT: BC forest drought risk assessment tool

[![img](https://img.shields.io/badge/Lifecycle-Experimental-339999)](https://github.com/bcgov/repomountie/blob/master/doc/lifecycle-badges.md)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Overview

bcgov/forDRAT is an R package developed by the BC Ministry of Forests to
share information about historical and projected future drought risk in
mature forests in the province.

## Installation

You can install `forDRAT` directly from this GitHub repository. To
proceed, you will need the
[remotes](https://cran.r-project.org/package=remotes) package:

``` r
install.packages("remotes")
```

Next, install and load the `forDRAT` package using
`remotes::install_github()`:

``` r
remotes::install_github("bcgov/forDRAT")
library(forDRAT)
```

## Introduction

The ‘forDRAT’ package provides an estimate of drought risk in mature
forests across different tree species, biogeoclimatic units and relative
soil moisture regimes. The modeling approach is described in [DeLong et
al. (2019)](https://www.for.gov.bc.ca/hfd/pubs/Docs/Tr/TR125.pdf).

## Additional details

The drought risk estimates were generated using a water-balance modeling
approach as implemented in the Tree and Climate Assessment (TACA) model
developed by \[Nitschke and Innes (2008)\]
(<https://www.sciencedirect.com/science/article/abs/pii/S0304380007004061?via%3Dihub>).

The TACA model uses daily climate data, which is sparse in the province.
In order to provide drought-risk estimates for all biogeoclimatic units
in the province, we used the PNWNAmet gridded daily climate dataset,
developed by [Werner et
al. (2019)](https://www.nature.com/articles/sdata2018299). More
information and dataset download are available
[here](https://www.pacificclimate.org/data/daily-gridded-meteorological-datasets).
*We plan to publish an extension note that details how the PNWNAmet
dataset was used in TACA and forDRAT.*

### Literature cited

Nitschke, C.R. and Innes, J.L., 2008. A tree and climate assessment tool
for modelling ecosystem response to climate change. Ecological
modelling, 210(3), pp.263-277. <doi:10.1016/j.ecolmodel.2007.07.026>

Werner, A.T., Schnorbus, M.A., Shrestha, R.R., Cannon, A.J., Zwiers,
F.W., Dayon G. and Anslow, F., 2019. A long-term, temporally consistent,
gridded daily meteorological dataset for northwestern North America,
Scientific Data, 6, 180299, <doi:10.1038/sdata.2018.299>
