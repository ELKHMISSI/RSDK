library(magic)

#generation of a complete grid

grid_gen_cplt <- function() {
  A = matrix (rep(NA, 81), 9, 9)
  A[1, ] = sample(1:9)
  t = 1:3
  for (i in 1:2) {
    # 1:3 x 1:9
    A[i + 1, ] = shift(A[i, ], 3)
  }
  for (k in seq(0, 8, 3)) {
    # 4:9 x 1:9
    for (i in 1:2) {
      A[t + 3 * i, t + k] = ashift(A[t, t + k], c(0, i))
    }
  }
  for (k in seq(0, 8, 3)) {
    A[t + k, ] = A[sample(t + k), ] # randomizing rows
  }
  for (j in seq(0, 8, 3)) {
    A[, t + j] = A[, sample(t + j)] # randomizing rows
  }
  return(A)
}
