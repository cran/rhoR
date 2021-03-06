% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{generateKPs_c}
\alias{generateKPs_c}
\alias{generate_kp_list}
\title{generate_kp_list}
\usage{
generate_kp_list(
  numNeeded,
  baserate,
  kappaMin,
  kappaMax,
  precisionMin,
  precisionMax,
  distributionType = 0L,
  distributionLength = 10000L
)
}
\arguments{
\item{numNeeded}{int}

\item{baserate}{double}

\item{kappaMin}{double}

\item{kappaMax}{double}

\item{precisionMin}{double}

\item{precisionMax}{double}

\item{distributionType}{int 0 - normal (default), 1 - bell}

\item{distributionLength}{long}
}
\value{
matrix of kappa and precision values (column 1 as precision)
}
\description{
generate_kp_list
}
