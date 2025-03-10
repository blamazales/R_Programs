library(ggplot2)

# heatmap

ggplot(temperatura_porto_alegre, aes(codigo_estacao, regiao, fill= umid_inst)) + geom_tile()

#Variação 1
graficoheatmap<-ggplot(temperatura_porto_alegre, aes(codigo_estacao, regiao, fill= umid_inst)) + geom_tile()
graficoheatmap+ scale_fill_gradient(low="white", high="blue") 

#Variação 2
graficoheatmap<-ggplot(temperatura_porto_alegre, aes(codigo_estacao, regiao, fill= umid_inst)) + geom_tile()
graficoheatmap+ scale_fill_distiller(palette = "RdPu") 
