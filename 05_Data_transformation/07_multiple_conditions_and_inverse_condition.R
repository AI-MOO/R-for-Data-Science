library(tidyverse)
library(nycflights13)

# importing tibble
nycflights13::flights

# get the inverse of condition
filter(flights, !(arr_delay > 120 | dep_delay > 120))

# filter using multiple conditions
view(filter(flights, arr_delay <= 120, dep_delay <= 120, distance >= 3000, month == 12))