library(ggplot2)

## Arquivo Temperatura Porto Alegre - Histograma
grafico<-ggplot(temperatura_porto_alegre, aes(umid_inst)) 
grafico+ geom_histogram()

# Variação 1
grafico<-ggplot(temperatura_porto_alegre, aes(umid_inst)) 
grafico+ geom_histogram(binwidth =0.5)

# Variação 2
grafico<-ggplot(temperatura_porto_alegre, aes(umid_inst,fill = codigo_estacao)) 
grafico+ geom_histogram(binwidth = 0.9)

# Variação 3

grafico<-ggplot(temperatura_porto_alegre, aes(umid_inst,after_stat(density),colour = codigo_estacao)) 
grafico+ geom_freqpoly(binwidth = 0.6)

# Variação 4
grafico<-ggplot(temperatura_porto_alegre, aes(umid_inst,after_stat(density))) 
grafico+ geom_freqpoly(binwidth = 0.6)