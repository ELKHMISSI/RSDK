library(shiny)
library(shinyWidgets)
library(shinythemes)
library(keys)



shinyUI(
  fluidPage(
    theme = "mth.css",
    useKeys(),
    keysInput("keys", c("1", "2", "3", "4", "5", "6", "7", "8", "9")),

    h1(p("RSDK")),


    p(
      "Dévelopée par : EL KHMISSI Mohamed dans le cadre du projet du programmation R de Master1 SSD, FDS Montpellier"
    ),
    uiOutput("git"),
    br(),
    br(),
    br(),
    h1("Sudoku with R",),
    column(
      align = "center",
      #pickerInput(
      #  "Lv",
      #  h2("Level:"),
      #  choices = c("Easy", "Difficult", "Hard", "Legend"),
      #  width='200px'
      #),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      br(),
      actionBttn(
        "StartButton",
        "Start",
        icon = NULL,
        color = "royal",
        size = "lg",
        style = "stretch",
        block = T,
      ),
      actionBttn(
        "Ng",
        "New game",
        icon = NULL,
        color = "primary",
        size = "lg",
        style = "stretch",
        block = T
      ),
      actionBttn(
        "Check",
        "Check",
        icon = NULL,
        color = "success",
        size = "lg",
        style = "stretch",
        block = T
      ),
      actionBttn(
        "Solution",
        "Solution",
        icon = NULL,
        color = "danger",
        size = "lg",
        style = "stretch",
        block = T
      ),
      br(),
      width = 2
    ),

    column(fluidRow(
      column(
        8,
        align = "center",
        h2(textOutput('cor')),
        br(),
        plotOutput(
          'plot' ,
          width = "680px" ,
          height = "680px",
          click = "plot_click",
          dblclick = "dbl"
        ),
      ),
      column(4, align = "center",
             br(), br(), br(), br(),
             h3(
               p(
                 "What is Sudoku:",
                 br(),
                 "A Sudoku puzzle consists of 81 cells which are divided into nine columns, rows and 3x3 boxs. The task is now to place the numbers from 1 to 9 into the empty cells in such a way that in every row, column and 3×3 box each number appears only once.",
                 br(),
                 br(),
                 br(),
                 "How to play in RDSK:",
                 br(),
                 "Press Start button to start playing.",
                 br(),
                 "Select an empty cell on the grid by clicking on it once, and put a number from 1 to 9 by the keyboard.",
                 br(),
                 "To remove a value from an edited cell just double clicking on it.",
                 br(),
                 "Check button to verify the grid after playing. ",
                 br(),
                 "Solution button gives you the grid competly solved.(don't use it 😈!)",
                 br(),
                 "If an edited cell colred red that mean that the value on it is on the wrong place (it's already on the row or on the column or on the box), and if it has been colred green it means that the value on it not in the row,column or the box",
                 br(),
               )
             ),)
    ),




    width = 10),

  )
)
