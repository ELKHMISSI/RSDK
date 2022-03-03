################################## Df of each NA case with nbrposs
order_wposs <- function (x) {
  poss = vector()
  row = vector()
  col = vector()
  for (i in 1:9) {
    for (j in 1:9) {
      if (is.na(x[i, j])) {
        poss = append(poss, nbrposs(x, i, j))
        row = append(row, i)
        col = append(col, j)
      }
    }
  }
  D = data.frame(row, col, poss)
  D = D[order(D[, 3], decreasing = F),]
  return(D)
}


