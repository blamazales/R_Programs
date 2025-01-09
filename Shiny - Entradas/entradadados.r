ui <- fluidPage(
  textInput("txt", "Entre com seu nome: "),
  textAreaInput("txtA", "Entre com o resumo: "),
  passwordInput("txtP", "Entre com a senha: ")
)
server <- function(input, output){}


shinyApp(ui = ui, server = server)   

