# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
diamonds = ggplot2::diamonds

# you can choose geom_bar & stat_count interchangeably 
ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))
