[![ELKHMISSI - RSDK](https://img.shields.io/static/v1?label=ELKHMISSI&message=RSDK&color=success&logo=github)](https://github.com/ELKHMISSI/RSDK "Go to GitHub repo")
[![License](https://img.shields.io/badge/License-MIT-success)](#license)

## License

Released under [MIT](/LICENSE) by [@ELKHMISSI](https://github.com/ELKHMISSI).

## RSDK

RSDK or R SuDoKu is an R package developed for the project of R programmation in the master 1 SSD (Statistiques et sciences des donnés),faculty of science Montpellier.  
The package contains a shiny application that we can play sudoku on it .

---

## Author

+ EL KHMISSI Mohamed <mohamed.el-khmissi01@etu.umontpellier.fr>

---

### Install RSDK

The installation of the package is directly from `github`, so:

+ First, you need to install the `devtools` package. You can run in the console the following command
```
install.packages("devtools")
```
+ Load the `devtools` package:
```
library(devtools)
```
+ Then use:
```
install_github("ELKHMISSI/RSDK")
```
After installation of package, are you ready to play?

### Playing R SuDoKu

For playing in the shiny application all you need it's to load the `RSDK` package, and call `runSudoku()` function, run the following in the console:

```
library(RSDK)
runSudoku()
```



