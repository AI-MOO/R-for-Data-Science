# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg
A
# plotting with facets
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

