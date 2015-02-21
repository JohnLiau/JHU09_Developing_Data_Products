library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("A Simple Shiny Application"),  
  sidebarPanel(
    numericInput('WaitingTime', 'Waiting Time in minutes', 50, min = 40, max = 100, step = 5),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Oldfaithful hot spring eruption duration is positive correlated to waiting time.'),
    h3('A simple linear regression model and Shiny application has been built to predict the Eruption Duration with Waiting Time.'),
    h3('Please input your Waiting Time in minutes at left, and the application will give you the predicted eruption duration in minutes.'),
    h3('Valid Waiting Time is between 40 and 100 minutes.'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('Which resulted in a prediction of '),
    verbatimTextOutput("prediction")
  )
))
