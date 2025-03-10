#Mapa de Bolhas
# Libraries
library(ggplot2)
library(dplyr)

# carga dos dados
library(gapminder)
data <- gapminder %>% filter(year=="2007") %>% dplyr::select(-year)

# Exibição do gráfico
data %>%
  arrange(desc(pop)) %>%
  mutate(country = factor(country, country)) %>%
  ggplot(aes(x=gdpPercap, y=lifeExp, size=pop, color=continent)) +
  geom_point(alpha=0.7) +
  scale_size(range = c(.5, 24), name="População (M)") +
  labs(x = "Valor per Capta", y = "Expectativa Vida")
