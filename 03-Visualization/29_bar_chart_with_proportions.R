# importing libraries
library(tidyverse)
library(ggplot2)

# bar chart with proportions
ggplot2::ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))
