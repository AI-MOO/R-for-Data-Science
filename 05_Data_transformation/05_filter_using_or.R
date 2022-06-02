library(tidyverse)
library(nycflights13)

# importing tibble
nycflights13::flights

# filter using or |  
view(filter(flights, month == 11 | month == 12))
