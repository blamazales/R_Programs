# Dedograma
library(ggraph)
library(igraph)
library(tidyverse)

# criando o data frame 
data <- data.frame(
  nivel1=cotacao_dolar$regiao,
  nivel2=cotacao_dolar$local,
  nivel3=cotacao_dolar$dia_cotacao
)

# Criando os níveis
edges_nivel1_2 <- data %>% select(nivel1, nivel2) %>% unique %>% rename(from=nivel1, to=nivel2)
edges_nivel2_3 <- data %>% select(nivel2, nivel3) %>% unique %>% rename(from=nivel2, to=nivel3)
edge_list=rbind(edges_nivel1_2, edges_nivel2_3)

grafico <- graph_from_data_frame( edge_list )
#circular FALSE
ggraph(grafico, layout = 'dendrogram', circular = FALSE) + 
  geom_edge_diagonal() +
  geom_node_point() +
  theme_void()

#variação1
#circular TRUE
ggraph(grafico, layout = 'dendrogram', circular = TRUE) + 
  geom_edge_diagonal() +
  geom_node_point() +
  theme_void()

#variação2

ggraph(grafico, layout = 'dendrogram', circular = FALSE) + 
  geom_edge_link() +
  geom_node_point() +
  theme_void()

