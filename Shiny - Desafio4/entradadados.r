library(shiny)
library(DT)

ui <- fluidPage(
  titlePanel("Exemplo Painel com Grid"),
  
  fluidRow(
    column(
      4,
      wellPanel(
        checkboxGroupInput(
          "checkGroup", 
          label = h3("Selecione o ano:"), 
          choices = list(
            "1995" = 1, 
            "1996" = 2, 
            "1997" = 3,
            "1998" = 4,
            "1999" = 5,
            "2000" = 6
          ),
          selected = 1
        )
      )
    ),
    column(
      4,
      wellPanel(
        textAreaInput("txtA", "Descreva os valores selecionados:"),
        verbatimTextOutput("vbSaida"),
        dateInput("date", label = h3("Selecione a data de início"), value = "2014-01-01")
      )
    ),
    column(
      4,
      wellPanel(
        fileInput("flUpload", "Selecione o arquivo:"),
        tableOutput("tbDados")
      )
    )
  ),
  
  fluidRow(
    column(
      12,
      DT::dataTableOutput("table")
    )
  )
)

server <- function(input, output) {
  output$vbSaida <- renderPrint({
    input$date
  })
  
  output$table <- DT::renderDataTable({
    # Converte os valores selecionados em um data.frame
    if (is.null(input$checkGroup)) {
      return(data.frame(Ano = character(0)))  # Retorna tabela vazia se nada for selecionado
    }
    data.frame(Ano = input$checkGroup)
  }, options = list(pageLength = 5))
  
  output$tbDados <- renderTable({
    arq <- input$flUpload
    if (is.null(arq)) {
      return(NULL)
    }
    read.csv(arq$datapath, header = TRUE, sep = ";")
  })
}

shinyApp(ui = ui, server = server)
