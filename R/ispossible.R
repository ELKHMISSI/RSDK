################################### is possible to replace a Na by the number n
ispossible <- function (x, i, j, n) {
  if (!atrow(x, i, n) && !atcol(x, j, n) && !atbox (x, i, j, n)) {
    return(T)
  }
  return(F)
}
