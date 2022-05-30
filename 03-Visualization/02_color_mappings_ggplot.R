# importing libraries
library(tidyverse)
library(ggplot2)

# importing dataaAA
mpg = ggplot2::mpg

# scatter plot visulaiztion + aesthetic mappings
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))