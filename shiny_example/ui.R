
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Normal Distribution"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("min_width",
                  "Minimum Sepal Width:",
                  min = 2,
                  max = 3.5,
                  step = 0.25,
                  value = 2.5)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("frequencyPlot")
    )
  )
))
