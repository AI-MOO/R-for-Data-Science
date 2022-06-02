library(tidyverse)
library(nycflights13)

nycflights13::flights

summarise(flights, delay = mean(dep_delay, na.rm = TRUE))


