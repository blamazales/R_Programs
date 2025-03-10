#Connected Scaterplot
# Libraries
library(ggplot2)
library(hrbrthemes)

#Carga de dados
data <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/3_TwoNumOrdered.csv", header=T)
data$date <- as.Date(data$date)

# Plot
data %>%
  tail(1000) %>%
  ggplot( aes(x=date, y=value)) +
  geom_line( color="blue") +
  geom_point(shape=21, color="black", fill="#69b3a2", size=2) +
  theme_ipsum() +
  ggtitle("Evolução preço do Bitcon") +
  labs(x = "Data Avaliação", y = "Valor Bitcon")
