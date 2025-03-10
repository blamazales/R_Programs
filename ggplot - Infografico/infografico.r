library(ggplot2)
library(gridExtra)
#Infográfico
# Heatmap
graficoheatmap<-ggplot(temperatura_porto_alegre, aes(codigo_estacao, regiao, fill= umid_inst)) + geom_tile()
uniao1 <- graficoheatmap+ scale_fill_gradient(low="white", high="blue") 

# heatmap
uniao2 <-ggplot(temperatura_porto_alegre, aes(codigo_estacao, regiao, fill= umid_inst)) + geom_tile()

#violin
dados <- ggplot(mtcars, aes(factor(cyl), mpg))
uniao3 <- dados + geom_violin(aes(fill = cyl))

# Criação do infográfico
#install.packages("gridExtra")
#library(gridExtra)
grid.arrange(uniao1, uniao2, uniao3, nrow = 3)

grid.arrange(uniao2, arrangeGrob(uniao1, uniao3, ncol=2), nrow = 2)
