#' The DOSE index in COPD
#'
#' @param mmrc A number for the dyspnea scale of modified Medical Research Council (mMRC)
#' @param fev A number for forced expiratory volume in one second (FEV1) expressed as percentage
#' @param smoking_status Binary variable of patient's smoking status (yes as 1 or no as 0)
#' @param exacerbation The number of exacerbations of COPD during the previous year
#'
#' @return The DOSE index
#' @export
#'
#' @examples
#' dose(mmrc=0, fev=55, smoking_status=1, exacerbation=2)
dose <- function (mmrc, fev, smoking_status, exacerbation) {
  if (mmrc >= 0 & mmrc <= 1) {
    dyspnea <- 0
  } else if (mmrc == 2) {
    dyspnea <- 1
  } else if (mmrc == 3) {
    dyspnea <- 2
  } else if (mmrc == 4) {
    dyspnea <- 3
  }

  if (fev >= 50) {
    obstruction <- 0
  } else if (fev >= 30 & fev <= 49) {
    obstruction <- 1
  } else if (fev < 30) {
    obstruction <- 2
  }

  if (smoking_status == 0 ) {
    smoker <- 0
  } else {
    smoker <- 1
  }

  if (exacerbation >= 0 & exacerbation <= 1) {
    ex <- 0
  } else if (exacerbation >= 2 & exacerbation <= 3) {
    ex <- 1
  } else {
    ex <- 2
  }

  dose_index <- dyspnea + obstruction + smoker + ex
  results <- list()
  results$dose_index <- dose_index
  return(results)
  
}

