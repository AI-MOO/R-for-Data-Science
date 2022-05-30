# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
mpg = ggplot2::mpg
A
# right
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color=cty))


