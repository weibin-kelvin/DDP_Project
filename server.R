fx <- function(x,y) {
  
  data <- ChickWeight
  z <- data[data$Diet == x   , ]  
  z <- data[data$Diet == x &
                data$Time == y, ]
  out <- mean(z$weight)
  return (out)
}


shinyServer(
  function(input, output) {
    output$Weight <- renderPrint(fx(input$Diet, input$Time))
  }
)
