% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{getHand_kappa}
\alias{getHand_kappa}
\title{getHand_kappa}
\usage{
getHand_kappa(ct, handSetLength, handSetBaserate)
}
\arguments{
\item{ct}{KPs matrix of kappa (column 1) and precision (column 2) values}

\item{handSetLength}{The length of the \code{\link[=getTestSet]{testSet}} (ignored unless \emph{data} is an observed kappa value)}

\item{handSetBaserate}{baserate to inflate the sampled contingency table to}
}
\value{
Kappa as double
}
\description{
This function returns kappa calculated from a Handset taken from  a larger Contingency Table
}
