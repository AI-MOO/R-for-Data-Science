# importing libraries
library(tidyverse)
library(ggplot2)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")