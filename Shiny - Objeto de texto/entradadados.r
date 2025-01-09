ui <- fluidPage(
  textOutput("txtSaida"),
  verbatimTextOutput("vbSaida")
)
server <- function(input, output){
  output$txtSaida <- renderText("primeiro valor no objeto de saída")
  output$vbSaida <- renderPrint(version)
}


shinyApp(ui = ui, server = server)   

