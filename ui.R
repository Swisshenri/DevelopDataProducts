
## AQUI

#
# This is my New App
#


## Tooth length prediction

library(shiny)
library(shinythemes)

# Define UI for application that plots

shinyUI(fluidPage(theme = shinytheme("superhero"),
    titlePanel("Predict Toothlength from Dose"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("sliderDOSE", "What is the Desired Dose?", 0.1, 2.0, value = 0.5),
        checkboxInput("showModel01", "Show/Hide Model 1", value = TRUE),
        checkboxInput("showModel02", "Show/Hide Model 2", value = TRUE)
      ),
      
      ## Toothgrowth Prediction: ui.R Part 2
      
      mainPanel(
        plotOutput("plot1"),
        h3("Predicted Toothlength for Model 1 : Vitamin C"),
        textOutput("pred1"),
        h3("Predicted Toothlength from Model 2: Oranje Juice"),
        textOutput("pred2")
      )
    )
  ))
  
  