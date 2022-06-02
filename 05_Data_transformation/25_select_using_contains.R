library(tidyverse)
library(nycflights13)

nycflights13::flights

# select using contains
select(flights, contains("time"))
select(flights, contains("TIME"))
