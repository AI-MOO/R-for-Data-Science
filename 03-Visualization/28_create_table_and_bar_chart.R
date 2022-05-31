# importing libraries
library(tidyverse)
library(ggplot2)

demo <- tribble(
  ~cut,         ~freq,
  "Fair",       1610,
  "Good",       4906,
  "Very Good",  12082,
  "Premium",    13791,
  "Ideal",      21551
)

ggplot2::ggplot(data = demo) +
  geom_bar(mapping = aes(x = cut, y = freq), stat = "identity")
