# Treemap
library(treemap)

# Dados
grupo <- cotacao_dolar$regiao
valor <- cotacao_dolar$valor
data <- data.frame(grupo,valor)

# treemap
treemap(data,
        index="grupo",
        vSize="valor",
        type="index"
)

#Variação1
grupo <- cotacao_dolar$regiao
subgrupo <- cotacao_dolar$local
valor <- cotacao_dolar$valor
data <- data.frame(grupo,subgrupo,valor)


treemap(data, index=c("grupo","subgrupo"),     vSize="valor", type="index",
        
        fontsize.labels=c(15,12),                # Tamanho do  labels. tamanho por grupo. tamanho por subgrupo
        fontcolor.labels=c("white","orange"),    # Cor do labels
        fontface.labels=c(2,1),                  # Fonte do labels: 1,2,3,4 para normal, bold, italic, bold-italic...
        bg.labels=c("transparent"),              # Cor Background dos labels
        align.labels=list(
          c("center", "center"), 
          c("right", "bottom")
        ),                                   
        overlap.labels=0.2,                      
        inflate.labels=F,)      

#variação2
grupo <- cotacao_dolar$regiao
subgrupo <- cotacao_dolar$local
valor <- cotacao_dolar$valor
data <- data.frame(grupo,subgrupo,valor)

treemap(data, index=c("grupo","subgrupo"), vSize="valor", type="index",
        
        border.col=c("black","white"),             # Cor das bordas dos grupos, subgrupos
        border.lwds=c(5,5)                         # largura da borda
        
) 
