#' Historic and future modeled soil moisture data for mature forests in British Columbia
#'
#' Dataset of modeled historic and future soil water balance.  Soil water balance is represented by the ratio between mean annual actual and potential evapotranspiration (AET:PET).  These data are presented across
#' xeric to subhygric relative soil moisture regimes for all biogeclimatic units in the province of BC.  These data are combined with tree species tolerances of AET:PET to estimate drought risk at the stand-level.
#'
#'@details {
#'
#'The data frame consists of the following columns:
#'\itemize{
#'\item \strong{BGC:} biogeoclimatic variant, using BEC version 11.  More information provided below.
#'\item\strong{Period:} period of time used to generate AET:PET ratio.  More information provided below.
#'\item\strong{RSMR:} relative soil moisture regime, where 1 = xeric, 2 = subxeric, 3 = submesic, 4 = mesic and 5 = subhygric.
#'\item\strong{AET_PET:} ratio between actual and potential evapotranspiration.  More information provided below.
#'\item\strong{geo_sd:} standard deviation of AET:PET calculated across 30 randomly sampled points within a BGC unit, averaged across all years withiun a given period.
#'\item\strong{ann_sd:} standard deviation of AET:PET calculated across all years within a period, averaged across 30 randomly sampled within each BGC unit.
#' }
#'
#' The methods used to generate these data using the forDRAT model are described in DeLong et al. (2019).  The forDRAT model utilizes the soil water balance module of the
#' Tree and Climate Assessment tool (Nitschke and Innes, 2008).  The latest version of forDRAT used the PNWNAmet daily gridded climate dataset (Werner et al. 2019).
#'
#' \strong{Literature cited:}
#'
#' \cr
#' DeLong, S.C., Griesbauer, H., Nitschke, C.R., Foord, V. and Rogers, B., 2019. Development of a drought risk assessment tool for British Columbia forests using a stand-level water-balance approach. Technical Report-Ministry of Forests, Lands and Natural Resource Operations, British Columbia, (125).
#' \cr
#' \cr
#' Nitschke, C.R. and Innes, J.L., 2008. A tree and climate assessment tool for modelling ecosystem response to climate change. Ecological modelling, 210(3), pp.263-277.
#' \cr
#' \cr
#' Werner, A.T., Schnorbus, M.A., Shrestha, R.R., Cannon, A.J., Zwiers, F.W., Dayon, G. and Anslow, F., 2019. A long-term, temporally consistent, gridded daily meteorological dataset for northwestern North America. Scientific Data, 6(1), pp.1-16.
#'
#' }

"drought_data"
