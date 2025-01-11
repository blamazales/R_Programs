ui <- fluidPage(
  checkboxGroupInput("checkGroup", label = h3("Selecione o ano: "), 
                     choices = list("1995" = 1, "1996" = 2, "1997" = 3,"1998" = 4,"1999" = 5,"2000" = 6),
                     selected = 1),
  dateInput("date", label = h3("Selecione a data de inicio"), value = "2014-01-01"),
  textAreaInput("txtA", "Descreva os valores selecionados: "),
  verbatimTextOutput("vbSaida"),
  DT::dataTableOutput("table"),
  fileInput("flUpload", "Selecione o arquivo: "),
  tableOutput("tbDados")
  
)
server <- function(input, output){
  output$vbSaida <- renderPrint({input$date })
  output$table <- DT::renderDataTable({
    # Converte os valores selecionados em um data.frame
    if (is.null(input$checkGroup)) {
      return(data.frame(Ano = character(0)))  # Retorna tabela vazia se nada for selecionado
    }
    data.frame(Ano = input$checkGroup)
  }, options = list(pageLength = 5)) 
  output$tbDados <- renderTable({
    arq <- input$flUpload
    
    if(is.null(arq)){
      return(NULL)
    }
    read.csv(arq$datapath, header = TRUE, sep=";")
  })
}


shinyApp(ui = ui, server = server)   
