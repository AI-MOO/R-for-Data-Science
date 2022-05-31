# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg

# multiple geoms in the same plot
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))
