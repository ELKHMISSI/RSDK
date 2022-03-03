################################### possibilities for each NA case
poss <- function(x, i, j) {
  k <- 1:9
  p <- NA
  for (n in k) {
    if (isTRUE(ispossible(x, i, j, n)))
      p <- append (p, n)
  }
  p <- p[complete.cases (p)]
  return(p)
}
