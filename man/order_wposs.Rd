% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/order_wposs.R
\name{order_wposs}
\alias{order_wposs}
\title{order_wposs()}
\usage{
order_wposs(x)
}
\arguments{
\item{x}{A sudoku grid}
}
\value{
data frame
}
\description{
This function returns an ordred data frame by number of the possibilities for all the empty cells in the grid with index of row for the first column and index of column for the second column and the number of possibilities in third column
}
\examples{
order_wposs(x=grid_gen_cplt())
}
