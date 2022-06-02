library(tidyverse)
library(nycflights13)

# importing tibble
nycflights13::flights

# filter using or |  
nov_dec <- filter(flights, month %in% c(10,11, 12))
