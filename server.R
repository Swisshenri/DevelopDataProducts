#

#
# This is my new App
#
# Peer Assignment


library(shiny)

# Define server logic required to draw a plot
shinyServer(function(input, output) {

    ## make two subsets of data file:  only VC and only OJ
    dtGVC <- subset(ToothGrowth, supp == "VC")
    dtGOJ <- subset(ToothGrowth, supp == "OJ")
    
    
    model01 <- lm(len ~ dose, data = dtGVC)
    model02 <- lm(len ~ dose, data = dtGOJ)
    
    model01pred <- reactive({
      doseInput <- input$sliderDOSE
      predict(model01, newdata = data.frame(dose = doseInput))
    })
    
    model02pred <- reactive({
      doseInput <- input$sliderDOSE
      predict(model02, newdata = data.frame(dose = doseInput))
    })
    
    ## Toothlength prediction
    
    output$plot1 <- renderPlot({
      doseInput <- input$sliderDOSE
      par(bg = 'lightyellow')
      plot(ToothGrowth$dose, ToothGrowth$len, xlab = "Dose ", panel.first = grid(8,8), 
           ylab = "Length", bty = "n", pch = 20,
           xlim = c(0, 2), ylim = c(0, 40))
      
      if(input$showModel01){
        abline(model01, col = "darkgreen", lwd = 2)
      }
      if(input$showModel02){
        abline(model02, col = "magenta", lwd = 2)
      }
      
      legend(0.1, 35, c("Predict Supp VC", "Predict Supp OJ"), pch = 16, 
             col = c("darkgreen", "magenta"), bty = "n", cex = 1.2)
      points(doseInput, model01pred(), col = "darkgreen", pch = 16, cex = 2)
      ##0012     points(mpgInput, model1pred(), col = "red", pch = 16, cex = 2)
      points(doseInput, model02pred(), col = "magenta", pch = 16, cex = 2)
    })
    
    
    
    output$pred1 <- renderText({
      model01pred()
    })
    
    output$pred2 <- renderText({
      model02pred()
    })
  })
  