library(shiny)
library(dplyr)
library(rsconnect)
ui <- fluidPage(
  numericInput(inputId = "n", "Sample size", value = 30), 
  plotOutput(outputId = "hist")
)
server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$n))
  })
}

shinyApp(ui = ui, server = server)
