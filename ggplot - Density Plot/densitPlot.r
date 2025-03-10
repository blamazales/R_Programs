library(ggplot2)

# 2d Density Plot
ggplot(viagem, aes(x=diaria, y=passagem) ) +
  geom_bin2d() +
  theme_bw()

#Variação1
ggplot(viagem, aes(x=diaria, y=passagem) ) +
  geom_bin2d(bins = 170) +
  scale_fill_continuous(type = "viridis") +
  theme_bw()

#Variação2
ggplot(viagem, aes(x=diaria, y=passagem) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="white")

#Variação3
ggplot(viagem, aes(x=diaria, y=passagem) ) +
  stat_density_2d(aes(fill = ..density..), geom = "raster", contour = FALSE) +
  scale_fill_distiller(palette= "Spectral", direction=1) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  theme( #legend.position='none'
  )
