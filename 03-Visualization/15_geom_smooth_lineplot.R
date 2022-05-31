# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg

# line plot 
ggplot2::ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))


