ui <- fluidPage(
  titlePanel("Exemplo Painel com barra lateral"),
  sidebarLayout(
    mainPanel(
      plotOutput("plot")
    ),
    sidebarPanel(
      sliderInput("slValores","Selecione o conjunto de valores",min=0,max=100,value=c(20,60))
    )
  )
)
server <- function(input, output){
  output$plot <- renderPlot(barplot(input$slValores))
}


shinyApp(ui = ui, server = server)   
