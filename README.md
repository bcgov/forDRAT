```{=html}
<!--
Copyright 2024 Province of British Columbia

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the License.
-->
```
<!-- Edit the README.Rmd only!!! The README.md is generated automatically from README.Rmd. -->

# bcgov/forDRAT: BC forest drought risk assessment tool


[![img](https://img.shields.io/badge/Lifecycle-Experimental-339999)](https://github.com/bcgov/repomountie/blob/master/doc/lifecycle-badges.md) [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Overview

bcgov/forDRAT contains data by the BC Ministry of Forests about historical and projected future drought risk in mature forests in the province.  


## Introduction

The 'forDRAT' package provides an estimate of drought risk in mature forests across different tree species, biogeoclimatic units and relative soil moisture regimes.  The modeling approach is described in [DeLong et al. (2019)](https://www.for.gov.bc.ca/hfd/pubs/Docs/Tr/TR125.pdf).  

## Data
The package contains the following file in the *data* folder: 

- *forDrat.csv* - a .csv file that lists estimated risk of drought-related mortality in mature forest stands.  

The file contains the following columns:

1. BGC - lists the BGC variant.  BGC variants were identified from BEC v11.
2. Period - data are listed for two historical periods: (i) 1961-1990 and (ii) 1981-2010, as well as three future scenarios: (i) 2020; (ii) 2050; and (iii) 2080.
3. SMR_text - text description of relative soil moisture regime (RSMR), ranging from xeric to subhygric.  Sites with RSMR wetter than subhygric are not considered in this model.
4. SMR- integer description of RSMR, with 1 = xeric; 2 = subxeric; and so on.
5. AET_PET - the mean annual ratio between actual and potential evapotranspiration.  See [DeLong et al. (2019)](https://www.for.gov.bc.ca/hfd/pubs/Docs/Tr/TR125.pdf) for details.
6. The remaining columns describe drought risk by tree species.  Each column name represents a tree species code, with codes being listed [here](https://www2.gov.bc.ca/gov/content/industry/forestry/managing-our-forest-resources/tree-seed/tree-seed-centre/seed-testing/codes).  *Please note that forDRAT currently only considers interior species*. The following drought risk codes are used; (i) L = low; (ii) M = moderate; (iii) H = high; and (iv) VH = very high.


## Additional details

The drought risk estimates were generated using a water-balance modeling approach as implemented in the Tree and Climate Assessment (TACA) model developed by [Nitschke and Innes (2008)](https://www.sciencedirect.com/science/article/abs/pii/S0304380007004061?via%3Dihub).  

The TACA model uses daily climate data, which are sparse in the province.  In order to provide drought-risk estimates for all biogeoclimatic units in the province, we used the PNWNAmet gridded daily climate dataset, developed by [Werner et al. (2019)](https://www.nature.com/articles/sdata2018299).  More information and dataset download are available [here](https://www.pacificclimate.org/data/daily-gridded-meteorological-datasets).  *We plan to publish an extension note that details how the PNWNAmet dataset was used in TACA and forDRAT.*

Future daily climate data was generated by adding monthly climate change projection anomalies for the different future climate model periods (2020 = 2011-2040, 2050 = 2041-2070, 2070 = 2071-2100) from [ClimateBC](https://climatebc.ca/) version 6.21, 15-model ensemble of the RCP 4.5 emission scenario (DeLong et al. 2022, Wang et al. 2006).

### Literature cited

DeLong, S.C., Griesbauer, H., Nitschke, C.R., Foord, V. and Rogers, B., 2019. Development of a drought risk assessment tool for British Columbia forests using a stand-level water-balance approach. Prov. BC, Victoria. BC Tech. Rep. 125. [Download here](https://www.for.gov.bc.ca/hfd/pubs/Docs/Tr/TR125.pdf)

DeLong, S.C., H. Griesbauer, V. Foord, B. Rogers, and J. Kyllo. 2022. Developing a tool for the early detection of drought-induced forest stress and mortality in British Columbia. Prov. B.C., Victoria, B.C. Tech. Rep. 141. http://library.nrs.gov.bc.ca/digipub/Tr141.pdf

Nitschke, C.R. and Innes, J.L., 2008. A tree and climate assessment tool for modelling ecosystem response to climate change. Ecological modelling, 210(3), pp.263-277. doi:10.1016/j.ecolmodel.2007.07.026

Wang, T., A. Hamann, D.L. Spittlehouse, and S.N. Aitken. 2006. Development of scale-free climate data for western Canada for use in resource management. Int. J. Climatol. 26(3):383–397. DOI:10.1002/joc.1247.

Werner, A.T., Schnorbus, M.A., Shrestha, R.R., Cannon, A.J., Zwiers, F.W., Dayon G. and Anslow, F., 2019. A long-term, temporally consistent, gridded daily meteorological dataset for northwestern North America, Scientific Data, 6, 180299, doi:10.1038/sdata.2018.299




