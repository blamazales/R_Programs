df <- read.csv("dadosbahiaglp2019.csv",header = TRUE,sep = ";")
#devtools::install_github("ramnathv/htmlwidgets#351")

ui <- fluidPage(
  downloadButton("dwArquivo")
)
server <- function(input, output){
  output$dwArquivo <- downloadHandler("dadosglp.csv", content = function(file){
    write.csv(df,file)
  }
                                                                         
                                                                         )
}


shinyApp(ui = ui, server = server)   

