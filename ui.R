shinyUI(fluidPage(
  
  titlePanel("Gender gap"),
  
  sidebarLayout(
    sidebarPanel("genderwise differences in India compared to World",
                 selectInput("gender.select", label = h3("Select gender"), 
                             choices = list("Male", "Female", "Both")),
                 selectInput("country.select", label = h3("Select countries"), 
                             choices = list("India", "World", "Both"))
    ),
    
    mainPanel(
       plotOutput("barPlot")
    )
  )
))
