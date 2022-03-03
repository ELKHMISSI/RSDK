####generation of the grid

grid_gen <- function(t) {
  A = grid_gen_cplt()
  repeat {
    v = sample(1:9)
    A[v[sample(1:9, 1)], v[sample(1:9, 1)]] = NA
    if (sum(is.na(A)) == t) {
      break
    }
  }
  return(A)
}
