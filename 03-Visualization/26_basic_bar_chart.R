# importing libraries
library(tidyverse)
library(ggplot2)

# importing data
diamonds = ggplot2::diamonds

# bar chart
ggplot2::ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

