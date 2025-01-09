ui <- fluidPage(
  #obejtos de entrada de texto
  textInput("txt", "Entre com seu nome: "),
  textAreaInput("txtA", "Entre com o resumo: "),
  passwordInput("txtP", "Entre com a senha: "),
  #objetos de entradas numericas
  sliderInput("sldI", "Selecione o valor:",0,10,6,2),
  sliderInput("sldIr","Selecione o valor:",0,10,c(4,6),2),
  numericInput("numI", "Seelcione o número",0,0,10),
  #objetos de entradas para data
  dateInput("dl", "Selecione a data do primeiro dia do mês: "),
  dateRangeInput("drl","Selecione o periodo de suas férias: ")
)
server <- function(input, output){}


shinyApp(ui = ui, server = server)   
