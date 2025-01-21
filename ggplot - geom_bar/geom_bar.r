library(ggplot2)

## Arquivo Temperatura Porto Alegre - Barras
barragraf<-ggplot(temperatura_porto_alegre, aes(codigo_estacao)) 
barragraf+ geom_bar()

## Arquivo Temperatura Porto Alegre - Barras agrupamento por regiao
barragraf<-ggplot(temperatura_porto_alegre, aes(codigo_estacao)) 
barragraf+ geom_bar()+
facet_wrap(~ regiao)

#variação1
ggplot(temperatura_porto_alegre)+geom_bar(aes(y=codigo_estacao))

#variação2
barragraf<-ggplot(temperatura_porto_alegre, aes(umid_inst)) 
barragraf + geom_bar(aes(fill = codigo_estacao))

#variação3
barragraf<-ggplot(temperatura_porto_alegre, aes(umid_inst)) 
barragraf + geom_bar(aes(fill = codigo_estacao)) + theme(legend.position = "top")


#variação4
barragraf<-ggplot(temperatura_porto_alegre, aes(pressao)) 
barragraf + geom_bar(aes(fill = codigo_estacao)) + theme(legend.position = "top")