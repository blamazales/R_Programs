#interatividade com os gráficos
library(ggplot2)
library(plotly)

# Lollipop Chart
library(ggplot2)

q<- ggplot(cotacao_dolar, aes(x=dia_cotacao, y=valor)) +
  geom_segment( aes(x=dia_cotacao, xend=dia_cotacao, y=0, yend=valor) , size=1, color="blue", linetype="dotdash" ) +
  geom_point()

ggplotly(q)
