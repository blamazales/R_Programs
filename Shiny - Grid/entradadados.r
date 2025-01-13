ui <- fluidPage(
  titlePanel("Exemplo Painel com Grid"),
  fluidRow(
    column(
      4,
      wellPanel(
        sliderInput("slValores", "Selecione o conjunto de valores: ", min=0,max=100,value = c(20,60))
      )
    ),
    column(3,
           textOutput("txtValores")
    ),
    column(6,
      plotOutput("plot")
    )
  )
  
)
server <- function(input, output){
  output$txtValores <- renderText(input$slValores)
  output$plot <- renderPlot(barplot(input$slValores,height = 70))
}


shinyApp(ui = ui, server = server)   
