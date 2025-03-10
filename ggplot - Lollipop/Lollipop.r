#Wordcloud
library(wordcloud2) 
repeticao<-as.data.frame(table(viagem$nome_orgao_solicitado))
saida <- data.frame(valor=repeticao$Var1,contagem=repeticao$Freq)
saida2<-tail(saida[order(saida$contagem),],9)

# Basic plot
wordcloud2(saida2, size=.6)

#variacao1
wordcloud2(saida2, color = "random-light", backgroundColor = "grey")

#variacao2
wordcloud2(saida2, size=1.6, color='random-light', backgroundColor="black")

#variação3
wordcloud2(saida2, size = 2.3, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)


