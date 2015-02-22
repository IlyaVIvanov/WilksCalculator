
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#


library(shiny)

shinyServer(function(input, output) {
#   mult <- reactive({
#     mult <- input$some.input.option    
#   })
  
#   mult <- 1
#   if(input$unit == "lb")  mult = 0.454
#   
#   if(input$sex == "m") poly <- c(-216.0475144, 16.2606339, -0.002388645, -0.00113732, 7.01863E-06, -1.291E-08)
#   if(input$sex == "f") poly <- c(594.31747775582, -27.23842536447, 0.82112226871, -0.00930733913, 0.00004731582, -0.00000009054)
#   
#   total <- (input$squat+input$bench+input$deadlift) * mult
#   weight <- input$weight * mult
#   polywt <- 0
#   for (i in 1:6) polywt[i] <-weight^(i-1) 
#   wilks <- total*500/sum(poly*polywt)

  output$total <- renderPrint({
    mult <- 1
      if(input$unit == "lb")  mult = 0.454
      
      if(input$sex == "m") poly <- c(-216.0475144, 16.2606339, -0.002388645, -0.00113732, 7.01863E-06, -1.291E-08)
      if(input$sex == "f") poly <- c(594.31747775582, -27.23842536447, 0.82112226871, -0.00930733913, 0.00004731582, -0.00000009054)
      
      total <- (input$squat+input$bench+input$deadlift) * mult
    total
    
    
  })
  output$wilks <- renderPrint({
    
    
      mult <- 1
      if(input$unit == "lb")  mult = 0.454
      
      if(input$sex == "m") poly <- c(-216.0475144, 16.2606339, -0.002388645, -0.00113732, 7.01863E-06, -1.291E-08)
      if(input$sex == "f") poly <- c(594.31747775582, -27.23842536447, 0.82112226871, -0.00930733913, 0.00004731582, -0.00000009054)
      
      total <- (input$squat+input$bench+input$deadlift) * mult
      weight <- input$weight * mult
      polywt <- 0
      for (i in 1:6) polywt[i] <-weight^(i-1) 
      wilks <- total*500/sum(poly*polywt)
      wilks
    
  })

})
