fx <- function(x,y) {
  
  data <- ChickWeight
  
  
  tmp <- data[data$Diet == x   , ]
  
  
  tmp <- data[data$Diet == x &
                data$Time <= y, ]
  
  
  out <- mean(tmp$weight)
  return (out)
}


shinyServer(
  function(input, output) {
    output$Weight <- renderPrint(fx(input$Diet, input$Time))
  }
)
