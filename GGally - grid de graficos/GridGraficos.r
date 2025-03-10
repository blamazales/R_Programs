#Gráficos GGally
library(GGally)

set.seed(657465)                        
N <- 1000                               

var1 <- rnorm(N)                          
var2 <- x1 + rnorm(N, 0, 40)               
var3 <-5 * x1 - x2 + rnorm(N, 0, 15)      

data <- data.frame(var1, var2, var3)  
pairs(data) 

#variação1
pairs(~ var1 + var2, data = data)  

#variação2
pairs(data[ , 1:3],
      col = "blue",                                         
      pch = 12,                                             
      labels = c("variavel1", "variavel2", "variavel3"),                  
      main = "Análise das variáveis no R")

#variação3
group <- NA
group[data$var1 < - 1] <- 1
group[data$var1 >= - 1 & data$var1 <= 1] <- 2
group[data$var1 > 1] <- 3

pairs(data[ , 1:3],
      col = c("green", "blue", "red")[group],    
      pch = c(1, 1, 1)[group],                             
      labels = c("var1", "var2", "var3"),
      main = "análise colorindo por grupo")

#variação4
library("ggplot2")
ggpairs(data,title = "análise correlação, densidade",
        columnLabels = c("Variável1", "Variável2", "Variável3"),
        upper = list(continuous = "smooth", combo = "box_no_facet"), # cor-correlacao, density-densidade, points-ponto,smooth-reta de estimação 
        lower = list(continuous = "smooth", combo = "facethist"))

#continuous
#exatamente uma de('points', 'smooth', 'smooth_loess', 'density', 'cor', 'blank'). Opção utilizada para variáveis continuas X and Y dos dados

#combo
#exatamente uma de ('box', 'box_no_facet', 'dot', 'dot_no_facet', 'facethist', 'facetdensity', 'denstrip', 'blank'). Opção utilizada para variáveis continua X e categorica Y data or categorical X ou vice-versa

#discreta
#exatamente uma de ('facetbar', 'ratio', 'blank'). Opção utilizada para variáveis X e Y