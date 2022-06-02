library(tidyverse)
library(nycflights13)

nycflights13::flights

filter(flights, is.na(dep_time))
