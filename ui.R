
library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Your Wilks"),
  helpText(" This app calculates powerlifting Wilks coefficient.",
           "You input your sex, weight, three big lifts, and press \"Submit\"."), 

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      radioButtons("unit", "Measurement units:",
                   c("Imperial" = "lb",
                     "Metric" = "kg")),
      radioButtons("sex", "Your sex",
                   c("Male" = "m",
                     "Female" = "f")),
      numericInput('weight', 'Bodyweight', 60),
      numericInput('squat', 'Squat', 20),
      numericInput('bench', 'Bench Press', 20),
      numericInput('deadlift', 'Deadlift', 20),

      submitButton('Submit')
      
    ),

    
    mainPanel(
      h3('Results of calculation'),
      h4('Your total in kg is'),
      verbatimTextOutput("total"),
      h4('Your Wilks coefficient is'),
      verbatimTextOutput("wilks")
    )
  )
))
