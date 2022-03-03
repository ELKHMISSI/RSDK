################################### is a box contains the number n
atbox <-function (x, i, j, n) {
    n %in% x[((i - 1) %/% 3) * 3 + (1:3), ((j - 1) %/% 3) * 3 + (1:3)]
  }
