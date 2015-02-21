library(shiny)
EruptionDuration <- function(WaitingTime) WaitingTime*0.07391-1.792739
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$WaitingTime})
    output$prediction <- renderPrint({EruptionDuration(input$WaitingTime)})
  }
)
