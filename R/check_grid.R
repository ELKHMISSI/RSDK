################################### Check grid
check_grid <- function(x) {
  K = matrix(NA, 9, 9)
  for (i in 1:9)
    for (j in 1:9) {
      k = as.numeric(x[i, j])
      x[i, j] = NA
      K[i, j] = ispossible(x, i, j, k)
    }
  if (all(K))
    return(T)
  else
    return(F)
}
