# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg

# scatter plot visulaiztion 
ggplot2::ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
 

