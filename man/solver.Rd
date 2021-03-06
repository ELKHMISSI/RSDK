% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/solver.R
\name{solver}
\alias{solver}
\title{solver()}
\usage{
solver(x)
}
\arguments{
\item{x}{A sudoku grid}
}
\value{
The grid \code{x} solved
}
\description{
This function is a recurcive function that solves a given sudoku grid for shiny application and it is more
optimized than the backtraking solver on the function \code{\link[RSDK]{bt_solver}}
}
\examples{
solver(x=grid_gen(46))
}
