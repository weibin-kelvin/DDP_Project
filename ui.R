
library("shiny")
shinyUI(
  pageWithSidebar(
    headerPanel("Weight versus age of chicks on different diets"),
    sidebarPanel(
      h4('The body weights of the chicks were measured at birth and every SECOND day (therefore use only even number for TIME) thereafter until day 20. They were also measured on day 21. There were four groups on chicks on different protein diets.'),
      h4('Select the diet and time (i.e. their age in days) (range:0-21) and we shall show you the corresponding average  weight(gm)'),
      
      h3("Enter the data"),
      
      radioButtons("Diet", "Diet:",
                   c("1" = "1",
                     "2" = "2",
                     "3" = "3",
                     "4" = "4")),
      
      numericInput('Time', 'Time: ', 10, min = 0, max = 21, step = 1)			   
    ),
    mainPanel(
      h4("Weight"),
      verbatimTextOutput("Weight")
    )
  ))

