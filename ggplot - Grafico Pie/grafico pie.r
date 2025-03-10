# Pizza
# Criando dados
df <- data.frame(
  categoria=cotacao_dolar$regiao,
  medida=cotacao_dolar$valor
)
data<- aggregate(medida ~ categoria,
                 data=df,
                 FUN=mean)

pie(data$medida , labels = data$categoria)

#variação1
pie(data$medida , labels = data$categoria,edges=10)

#variação2
pie(data$medida , labels = data$categoria,density=10)

#variação3
library(RColorBrewer)
paleta <- brewer.pal(5, "Set2") 
pie(data$medida , labels = data$categoria,border="white", col=paleta)
