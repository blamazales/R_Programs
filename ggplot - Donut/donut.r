# Donut
library(ggplot2)

# Criando dados
df <- data.frame(
  categoria=viagem$situacao,
  medida=viagem$diaria
)
data<- aggregate(medida ~ categoria,
                 data=df,
                 FUN=sum)


# Percentuais
data$fraction <- data$medida / sum(data$medida)

# acumulado dos percentuais
data$ymax <- cumsum(data$fraction)

# o tamanho do retângulo
data$ymin <- c(0, head(data$ymax, n=-1))

# onde o label cairá
data$labelPosition <- (data$ymax + data$ymin) / 2

# ajusta o valor do label
data$label <- paste0(data$categoria, "\n value: ", data$medida)

# gráfico de donut
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=categoria)) +
  geom_rect() +
  geom_label( x=3.5, aes(y=labelPosition, label=label), size=6) +
  scale_fill_brewer(palette=4) +
  coord_polar(theta="y") +
  xlim(c(2, 4)) +
  theme_void() +
  theme(legend.position = "none")

#variação1
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=categoria)) +
  geom_rect() +
  geom_text( x=2, aes(y=labelPosition, label=label), size=4) + 
  scale_fill_brewer(palette=8) +
  scale_color_brewer(palette=16) +
  coord_polar(theta="y") +
  xlim(c(-1, 4)) +
  theme_void() +
  theme(legend.position = "none")

