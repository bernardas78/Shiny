library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Random normal distributions"),
    
    sidebarLayout(
        sidebarPanel(
            numericInput("cnt",
                      "Count of random normals (1 to 10^6)",
                      min=1,max=10^6,value=10^4),
            sliderInput("breaks",
                        "Number of breaks",
                        min=1,max=250,value=20),
            selectInput("col",
                        "Choose color",
                        choices=c("red","green","blue"),
                        selected="green"),
            tags$div(class = "header", checked = NA,
                     tags$h3("Usage instructions"),
                     tags$p("The program plots normally distributed population."),
                     tags$p("On the left there are 3 input variables which you can play with in order to change plot on the right:"),
                     tags$p("1. Population count. Enter a number between 1 and 10^6. It's ok to enter a bigger number, but the program will assume 10^6 if you do so"),
                     tags$p("2. Number of breaks. With a slider pick a number between 1 and 250"),
                     tags$p("3. Color of histogram. Pick read, green or blue"),
                     tags$p("On the right there is a histogram of a normally distributed population, using parameters you specified")
                     #tags$a(href = "readme.md", "Click Here!")
            )
            
        ),
        
        mainPanel(
            plotOutput("histNorm")
        )
    )
))


