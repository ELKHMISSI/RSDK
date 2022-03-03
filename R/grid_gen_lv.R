####generation of the grid with levels

grid_gen_lv <- function(lv) {
  if (lv == "Easy") {
    repeat {
      A = grid_gen(51)
      if (bt_solver(A)[[2]] < 100)
        break
    }

  }
  else if (lv == "Difficult") {
    repeat {
      A = grid_gen(54)
      if (bt_solver(A)[[2]] %in% 100:200)
        break
    }

  }
  else if (lv == "Hard") {
    repeat {
      A = grid_gen(57)
      if (bt_solver(A)[[2]] %in% 200:300)
        break
    }

  }
  else if (lv == "Legend") {
    repeat {
      A = grid_gen(60)
      if (bt_solver(A)[[2]] > 300)
        break
    }

  }
  return(A)
}
