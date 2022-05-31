# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg

# define mapping x,y once
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
    geom_point() +
    geom_smooth()
