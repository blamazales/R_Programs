library(ggplot2)
## Arquivo Temperatura Porto Alegre - Boxplot
boxplotgraf<-ggplot(temperatura_porto_alegre, aes( umid_inst,regiao)) 
boxplotgraf+ geom_boxplot()

#variação1
boxplotgraf<-ggplot(temperatura_porto_alegre, aes( umid_inst,regiao)) 
boxplotgraf+ geom_boxplot(notch = TRUE)

#variação2
boxplotgraf<-ggplot(temperatura_porto_alegre, aes( umid_inst,regiao)) 
boxplotgraf+ geom_boxplot(fill = "red", colour = "#5464FF")

#variação3
boxplotgraf<-ggplot(temperatura_porto_alegre, aes( umid_inst,regiao)) 
boxplotgraf+ geom_boxplot(fill = "red", colour = "#5464FF") + geom_jitter(width = 0.2)

#variação4
boxplotgraf<-ggplot(temperatura_porto_alegre, aes( umid_inst,regiao)) 
boxplotgraf+geom_boxplot(aes(colour = codigo_estacao))