#' The IntCal20 northern hemisphere radiocarbon curve for the 0-55,000 yr BP period
#' 
#' @description
#' Atmospheric radiocarbon calibration curve for the period 0 to 55,000 yr BP for the northern hemosphere. This is the most recent update to the internationally agreed calibration curve and supersedes \code{\link{IntCal13}}.
#' 
#' @usage data(IntCal20)
#' @format
#'   A data frame with 9501 rows and 5 variables.
#'   \describe{
#'     \item{\code{CAL.BP}}{Calibrated age in years Before Present (BP).}
#'     \item{\code{C14.age}}{C14 age in years BP.}
#'     \item{\code{Sigma.C14.age}}{Standard deviation for \code{C14.age}.}
#'     \item{\code{Delta.14C}}{Delta.14C value in per mil.}
#'     \item{\code{Sigma.Delta.14C}}{Standard deviation of \code{Delta.14C} in per mil.}
#'   }
#' 
#' @details
#' All details about the derivation of this dataset are provided in Reimer et al. (2020).
#' 
#' @source <https://doi.org/10.1017/RDC.2020.41>
#' 
#' @references
#' Reimer, P., Austin, W., Bard, E., Bayliss, A., Blackwell, P., Bronk Ramsey, C., . . . Talamo, S. (2020). 
#' The IntCal20 Northern Hemisphere Radiocarbon Age Calibration Curve (0–55 cal kBP). 
#' Radiocarbon, 62(4), 725-757. doi:10.1017/RDC.2020.41 
#' 
#' 
#' @examples
#'     plot(IntCal20$CAL.BP, IntCal20$Delta.14C, type="l", 
#'          xlab="cal BP", ylab="Delta14C (per mil)")

#' 
#' @author Ingrid Chanca \email{ichanca@bgc-jena.mpg.de} 
#' @docType data
#' @keywords datasets
'IntCal20'

