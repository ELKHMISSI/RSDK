% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/perm_mat.R
\name{perm_mat}
\alias{perm_mat}
\title{perm_mat()}
\usage{
perm_mat(a, v)
}
\arguments{
\item{a}{A matrix}

\item{v}{The length of the cyclic permutation}
}
\value{
A matrix permuted cyclically by \code{v} columns
}
\description{
This function permutes the columns of a given matrix with a cyclic permutaion
}
\examples{
perm_mat(a=diag(1,5),4)
}
