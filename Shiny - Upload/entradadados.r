library(shiny)

ui <- fluidPage(
  fileInput("flUpload", "Selecione o arquivo: "),
  tableOutput("tbDados")
)

server <- function(input, output){
  output$tbDados <- renderTable({
    arq <- input$flUpload
    
    if(is.null(arq)){
      return(NULL)
    }
    read.csv(arq$datapath, header = TRUE, sep=";")
  })
} 

shinyApp(ui = ui, server = server)
