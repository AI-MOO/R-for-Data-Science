# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg
A
# plotting 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy),
             shape = 21, colour = "black", fill = "yellow",
             size = 3, stroke = 1)