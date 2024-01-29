#' Drought tolerance ratings developed for tree species in British Columbia
#'
#' Dataset of estimated species AET:PET thresholds for several tree species in BC.  These data are combined with stand-level AET:PET to estimate drought risk,
#' using the \link{classify_tree_risk} function in this package.
#'
#'@details {
#'
#'The data frame consists of the following columns:
#'
#'
#'\strong{Tree species codes: }
#'The following species codes are listed in \emph{Species} column:
#' \enumerate{
#'   \item Sx - hybrid spruce (\emph{Picea glauca} x \emph{P. engelmannii})
#'   \item Bl - subalpine fir (\emph{Abies lasiocarpa})
#'    \item Cw - western redcedar (\emph{Thuja plicata})
#'     \item Hw - western hemlock (\emph{Tsuga heterophylla})
#'      \item Fd - Interior Douglas-fir (\emph{Pseudotsuga menziesii} var. *glauca*)
#'      \item Ep - Paper birch (\emph{Betula papyrifera})
#'      \item At - Trembling aspen (\emph{Populus tremuloides})
#'      \item Ac - Black cottonwood (\emph{Populus trichocarpa})
#' }
#'\cr
#'
#'\strong{risk_cat:} Risk category.  *VH* = very high and refers to sites with lower AET:PET than associated value in \strong{aet_pet_threshold} column. *H* = high risk, and
#'*M* = moderate risk.  Sites with AET:PET greater than threshold for *M* sites are considered to have *L* (low) drought risk.
#'}
#'

"tree_risk"
