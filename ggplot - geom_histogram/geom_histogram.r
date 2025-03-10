library(ggplot2)

# base interna mtcars - Violino
dados <- ggplot(mtcars, aes(factor(cyl), mpg))
dados + geom_violin()

#Variação 1
dados <- ggplot(mtcars, aes(factor(cyl), mpg))
dados + geom_violin() + geom_jitter(height = 0, width = 0.1)

#Variação 2
dados <- ggplot(mtcars, aes(factor(cyl), mpg))
dados + geom_violin(aes(fill = cyl))

#Variação 3
dados <- ggplot(mtcars, aes(factor(cyl), mpg))
dados + geom_violin(draw_quantiles = c(0.25, 0.5, 0.75))
