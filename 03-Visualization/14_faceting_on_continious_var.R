# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg

# faceting on continious variable 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(~ cty)

