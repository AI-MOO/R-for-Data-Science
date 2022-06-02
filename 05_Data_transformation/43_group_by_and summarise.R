library(tidyverse)
library(nycflights13)

nycflights13::flights
by_day <- group_by(flights, year, month, day)
summ <- summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))