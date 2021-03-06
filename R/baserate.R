###
#' @title Calculate Baserate
#' 
#' @description
#' This function calculates the baserate of the first rater, second rater, and the average of both the raters.
#' 
#' @details
#' A baserate is the percentage, as a decimal, that a positive code appears in data (either a \code{\link{codeSet}} or \code{\link{contingencyTable}}) for a given rater.  It is assumed that the first rater is more experienced and thus provides a better estimation of the actual baserate for a given code, so the first rater's baserate is often used as if it is the actual baserate.  If the raters are assumed to have the same experience level, the average baserate may give a better estimation.  If the second rater is more experienced, the second rater's baserate may give a better estimation.  Functions assume that the first rater is the more experienced rater and thus uses the first rater's baserate as the overall baserate estimation.
#' 
#' 
#' @param data The \code{\link[=getTestSet]{testSet}} or \code{\link{contingencyTable}} for which the baserate is calculatede
#' 
#' @seealso \code{\link{baserateSet}} and \code{\link{baserateCT}}
#'
#' @examples
#' #Given a code set
#' baserate(data = codeSet)
#' 
#' #Given a contingency Table
#' baserate(data = contingencyTable)
#'
#' @export
#' @return A list of the format:\describe{
#' \item{firstBaserate}{The percentage of the data for which a positive code, or a 1, appears in the first rater}
#' \item{secondBaserate}{The percentage of the data for which a positive code, or a 1, appears in the second rater}
#' \item{averageBaserate}{The average of the firstBaserate and secondBaserate.}
#' }
#' 
###
baserate = function(data){
  if (nrow(data) != 2) {
    return(baserateSet(data))
  } else {
    return(baserateCT(data))
  }
}