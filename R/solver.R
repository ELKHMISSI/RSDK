################################ solver optimized
solver <- function (x) {
  if (all(!is.na(x))) {
    return(x)
  }
  pos = order_wposs(x)
  i = pos$row[1]
  j = pos$col[1]

  for (k in poss(x, i, j)) {
    if (ispossible(x, i, j, k)) {
      x[i, j] <- k
      S = solver(x)
      if (!is.null(S)) {
        return(S)
      }
    }
  }
}


