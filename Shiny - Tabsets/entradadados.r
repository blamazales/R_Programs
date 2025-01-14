library(shiny)
ui<-fluidPage(
  titlePanel("Exemplo Painel TabSet"),
  sidebarLayout(
    sidebarPanel(
      wellPanel(
        sliderInput("slValores","Selecione o conjunto de valores",min=0,max = 100,value = c(20,60))
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("plot Valores",plotOutput("plotVal")),
        tabPanel("Sumarizados",textOutput("txtValores")),
        tabPanel("plot Iris",plotOutput("plotIris"))
      )
    )
  )
)


server <- function(input, output) {
  output$plotVal<-renderPlot(barplot(input$slValores))
  output$txtValores<-renderText(summary(head(iris)))
  output$plotIris<-renderPlot(plot(x=iris$Sepal.Length, y=iris$Sepal.Width, 
                                   xlab="Sepal Length", ylab="Sepal Width",  main="Sepal Length-Width"))
}

shinyApp(ui = ui, server = server)
