ui <- fluidPage(
  #obejtos de entrada de texto
  textInput("txt", "Entre com seu nome: "),
  textAreaInput("txtA", "Entre com o resumo: "),
  passwordInput("txtP", "Entre com a senha: "),
  #objetos de entradas numericas
  sliderInput("sldI", "Selecione o valor:",0,10,6,2),
  sliderInput("sldIr","Selecione o valor:",0,10,c(4,6),2),
  numericInput("numI", "Selecione o número",0,0,10)
)
server <- function(input, output){}


shinyApp(ui = ui, server = server)   
