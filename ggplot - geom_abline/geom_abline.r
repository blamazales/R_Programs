library(ggplot2)

## Arquivo Temperatura Porto Alegre - Estimando retas
grafico<-ggplot(temperatura_porto_alegre, aes(vento_vel, umid_inst)) 
grafico+ geom_point() + geom_abline(intercept = 80,slope=0.05)


#Variação 1
coef(lm(vento_vel~ umid_inst, data = temperatura_porto_alegre))

grafico<-ggplot(temperatura_porto_alegre, aes(vento_vel, umid_inst)) 
grafico+ geom_point() + geom_abline(intercept = 439.291241,slope=-3.687611)

#variação 2
grafico <-ggplot(temperatura_porto_alegre, aes(vento_vel, umid_inst))+ geom_point()
grafico + geom_smooth(method = "lm", se = TRUE)


#variação 2
grafico <-ggplot(temperatura_porto_alegre, aes(pto_orvalho_inst, umid_inst))+ geom_point()
grafico + geom_smooth(method = "lm", se = TRUE)


