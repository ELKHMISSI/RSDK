% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/atbox.R
\name{atbox}
\alias{atbox}
\title{atbox()}
\usage{
atbox(x, i, j, n)
}
\arguments{
\item{x}{A sudoku grid}

\item{i}{An index of a line from the box}

\item{j}{An index of a column from the box}

\item{n}{a value to check its existance in the box that contains the cell of the index (i,j)}
}
\value{
TRUE if the checked value is on the box or FALSE if the checked value is not on the box
}
\description{
This function checks if a value already exists in a 3 by 3 box from a sudoku grid
}
\examples{
atbox(x=grid_gen(49),1,4,8)
}
