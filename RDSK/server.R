
library(shiny)

shinyServer(function(input, output) {

  observeEvent(input$StartButton,{
    plt_grid(grid_gen())
  })
  output$plot<- renderPlot({
    plt_grid(grid_gen())
  })

})
