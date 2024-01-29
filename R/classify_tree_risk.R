#' Classify tree drought risk
#'
#'
#' Use this function to classify stand-level drought risk based on AET:PET ratio and tree species.
#'
#' @param spp Species code(s) for which you want risk ratings.  Can pass multiple species using, for example \code{c("Sx","Pl")}.
#' @param AET_PET Vector of AET:PET ratios.  These will be cut into risk ratings.
#'
#' @export
#' @returns Data frame with column(s) named for tree species, and risk categories assigned to each AET:PET value.
#'
#' @details{
#' This function calls the *tree_risk* data in this package, and uses species specific values to cut AET:PET into different drought risk.  The function cuts sites into one of four categories: Low (L), Medium (M), High (H) and Very High (VH).  A *Very High* rating
#' indicates that the site is drier than observed distribution of the species.  Categories are assigned using
#' *less than or equal to* the specific category rating.  For example, if the lowest AET:PET threshold for a species is 0.81, then AET:PET values of .81 or lower will be categorized as having
#' a **Very High** drought risk rating.
#'
#' The
#' *tree_risk* data will be updated as research further refines species-specific AET:PET thresholds.
#' \cr
#' \cr
#' Species codes must match those found in \code{levels(tree_risk$Species)}.
#'
#' }
#' @examples
#' classify_tree_risk(spp=c("Pl","Sx","Fd"),AET_PET=c(0.45,0.78,0.88,0.99))
#'
#' # Can use 'mutate' to add columns to dataframe
#'
#'
#' data.frame(AET_PET=c(0.45,0.78,0.88,0.99)) %>%
#' dplyr::mutate(classify_tree_risk(spp=c("Pl","At"),AET_PET=AET_PET))
#'


classify_tree_risk<-function(spp,AET_PET) {

# Define a subfunction to categorize drought risk for an individual tree species
subFunc<-function(spp1,AET_PET) {
x<-
  data.frame(
  risk=cut(AET_PET,breaks=
         tree_risk %>%
         dplyr::filter(Species==spp1) %>%
         dplyr::pull(aet_pet_thresh) %>%
         sort() %>%
         c(0,.,2),labels=c("VH","H","M","L")) %>%
  as.character()
  ) %>%
  dplyr::rename("{spp1}_risk" := risk) %>%
  return()
} # close sub function

# Now run the subfunction over all species
purrr::map(spp,~subFunc(spp=.x,AET_PET=AET_PET)) %>%
  dplyr::bind_cols() %>%
  return()
} # close function




