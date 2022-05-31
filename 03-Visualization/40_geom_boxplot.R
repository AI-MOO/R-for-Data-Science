# importing libraries
library(tidyverse)
library(ggplot2)


ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot()

  