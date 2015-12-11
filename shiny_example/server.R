
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

  output$frequencyPlot <- renderPlot({
    
    qplot(Species, data = iris %>% filter( Sepal.Width > input$min_width ), geom = "bar", fill = Species )

  })

})
