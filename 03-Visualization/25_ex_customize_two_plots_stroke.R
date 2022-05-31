# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg

# customize two plots
ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy, linetype = drv)) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_smooth()

ggplot2::ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(x = displ, y = hwy, fill=drv),
             shape =21, color='white', size = 2, stroke=1)

