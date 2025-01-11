ui <- fluidPage(
  checkboxGroupInput("checkGroup", label = h3("Selecione o ano: "), 
                     choices = list("1995" = 1, "1996" = 2, "1997" = 3,"1998" = 4,"1999" = 5,"2000" = 6),
                     selected = 1),
  dateInput("date", label = h3("Selecione a data de inicio"), value = "2014-01-01"),
  textAreaInput("txtA", "Descreva os valores selecionados: ")
 
)
server <- function(input, output){}


shinyApp(ui = ui, server = server)   
