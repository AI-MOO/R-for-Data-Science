library(tidyverse)
library(nycflights13)

nycflights13::flights

# select vairalbe many times 
select(flights, dep_time,dep_time)

# select using any_of, all_of
vars <- c("year", "month", "day", "dep_delay", "arr_delay", "dd")
# strict selection any missing rise an error
select(flights,all_of(vars))
# non strict selection any missing will be passed
select(flights,any_of(vars))

