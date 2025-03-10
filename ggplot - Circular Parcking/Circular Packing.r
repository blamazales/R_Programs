# Circular Packing
library(packcircles)
library(ggplot2)

# Criando dados
df <- data.frame(
  categoria=viagem$nome_orgao,
  medida=viagem$diaria
)
viagem2<- aggregate(medida ~ categoria,
                    data=df,
                    FUN=sum)


# Create data
data <- data.frame(grupo=viagem2$categoria, valor=viagem2$medida) 

packing <- circleProgressiveLayout(data$valor, sizetype='area')

# ajustando a separação das bolhas
data <- cbind(data, packing)

#centralização das bolhas e cálculo ao redor do poligono
dat.gg <- circleLayoutVertices(packing, npoints=50)

# criando o gráfico
ggplot() + 
  
  # Criando as bolhas
  geom_polygon(data = dat.gg, aes(x, y, group = id, fill=as.factor(id)), colour = "black", alpha = 0.6) +
  
  # Adicionando o texto ao redor das bolhas
  geom_text(data = data, aes(x, y, size=valor, label = grupo)) +
  scale_size_continuous(range = c(1,4)) +
  
  # Tema
  theme_void() + 
  theme(legend.position="none") +
  coord_equal()
