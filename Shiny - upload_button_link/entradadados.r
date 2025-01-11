ui <- fluidPage(
  fileInput("flDados", "Selecione o arquivo a ser carregado: "),
  actionButton("btClique", "Clique Aqui "),
  actionLink("lkLink", "Site Dados APP", icon = icon("github"), href="htps://gihub.com",onclick="wndiow.open('https://github.com','_blank')")
)
server <- function(input, output){}


shinyApp(ui = ui, server = server)   
