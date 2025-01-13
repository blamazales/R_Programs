install.packages("ggplot2")
library("ggplot2")
install.packages("gapminder")
library(gapminder)

library(shiny)

data <- subset(gapminder, year == 2007)
df<-read.csv("dadosbahiaglp2019.csv",header = TRUE,sep = ";")
ui<-fluidPage(
  plotOutput("plot1",width="60%"),
  plotOutput("plot2",width="90%"),
  plotOutput("plot3",width="90%")
)

server<-function(input,output,session){
  output$plot1<-renderPlot(plot(1:20))
  
  output$plot2<-renderPlot(ggplot(df, aes(x=as.factor(Bandeira), fill=as.factor(Bandeira) )) + 
                             geom_bar( ) +
                             scale_fill_brewer(palette = "Set1") +
                             theme(legend.position="none"))
  output$plot3<-renderPlot(ggplot(data, aes(x=gdpPercap, y=lifeExp, size = pop)) +
                             geom_point(alpha=0.7))
}

shinyApp(ui,server)


