library(shiny)

shinyUI(fluidPage(
  titlePanel("RSDK"),

  sidebarPanel(
    h3("Sudoku with R"),
    actionButton("StartButton", "Start", icon = NULL),
    actionButton("NewGame", "New Game", icon = NULL),
    actionButton("Check", "Check ", icon = NULL),
    selectInput("Lv", "Level:", choices = c("Easy", "Difficult","Hard")),
    selectInput(inputId = "row",label = "Row", choices = 1:9),
    selectInput(inputId = "col",label = "Column", choices = 1:9),
    selectInput(inputId = "val",label = "Value", choices = 1:9),
  ),

  mainPanel(
 plotOutput('plot')
  )
))
