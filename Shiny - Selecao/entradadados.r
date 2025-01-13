lVeiculos <-c("ambulancia","onibus","carro")
lAnimais <- c("cachorro","gato","vaca","girafa")
lPaises <- c("Brasil","EUA","Alemanha","Australia")
ui <- fluidPage(
  selectInput("selPaises", "Selecione um País: ",lPaises),
  radioButtons("rdPaises", "Qual País escolhido: ",lPaises),
  radioButtons("rdVeiculos", "Selecione um tipo de veiculo: ", choiceNames = list(icon("ambulance"),icon("bus"),icon("car")),choiceValues = lVeiculos),
  selectInput("selVeic", "Seelcione os veiculos: ",lVeiculos,multiple = TRUE),
  checkboxGroupInput("chAnimais","Selecione as opções: ",lAnimais),
  checkboxInput("chVotoSim", "VOTEI SIM",value = TRUE),
  checkboxInput("chVotoNao", "VOTEI NÃO")
)
server <- function(input, output){}


shinyApp(ui = ui, server = server)   
