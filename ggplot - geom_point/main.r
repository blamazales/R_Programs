library(ggplot2)

data <- CO2
## uso base interna CO2
ggplot(data = CO2) + 
  geom_point(mapping = aes(x = conc, y = uptake))

#color = Treatment
ggplot(data = CO2) + 
  geom_point(mapping = aes(x = conc, y = uptake, color=Treatment))

#color = Type
ggplot(data = CO2) + 
  geom_point(mapping = aes(x = conc, y = uptake, color=Type))


#color = Plant
ggplot(data = CO2) + 
  geom_point(mapping = aes(x = conc, y = uptake, color=Plant))