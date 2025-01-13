df <- read.csv("dadosbahiaglp2019.csv",header = TRUE,sep = ";")
#devtools::install_github("ramnathv/htmlwidgets#351")

ui <- fluidPage(
  tableOutput("tbDados"),
  DT::dataTableOutput("table")
)
server <- function(input, output){
  output$tbDados <- renderTable(head(df))
  output$table <- DT::renderDataTable(df, options = list(pageLenght = 10))
}


shinyApp(ui = ui, server = server)   

