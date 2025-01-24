library(readxl)
temperatura_porto_alegre <- read_excel("temperatura_porto_alegre.xlsx")

## Arquivo Temperatura Porto Alegre - Labels eixos X e Y
ggplot(data = temperatura_porto_alegre) + 
  geom_point(mapping = aes(x = umid_inst, y = pto_orvalho_inst)) +
  labs(x = "Umidade", y = "Ponto Orvalho")


## Arquivo Temperatura Porto Alegre - Cores
ggplot(data = temperatura_porto_alegre) + 
  geom_point(mapping = aes(x = umid_inst, y = pto_orvalho_inst,colour=temp_inst)) +
  labs(x = "Umidade", y = "Ponto Orvalho")


## Arquivo Temperatura Porto Alegre - Tamanho pontos
ggplot(data = temperatura_porto_alegre) + 
  geom_point(mapping = aes(x = umid_inst, y = pto_orvalho_inst,colour=temp_inst,size=hora)) +
  labs(x = "Umidade", y = "Ponto Orvalho")

#agrupamento por região
ggplot(data = temperatura_porto_alegre) + 
  geom_point(mapping = aes(x = umid_inst, y = pto_orvalho_inst, colour = temp_inst, size = hora)) +
  labs(x = "Umidade", y = "Ponto Orvalho", colour = "Temperatura", size = "Hora") +
  facet_wrap(~ regiao) +
  theme_minimal()