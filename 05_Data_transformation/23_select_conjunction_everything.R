library(tidyverse)
library(nycflights13)

nycflights13::flights

# select() in conjunction with the everything()
view(select(flights, time_hour, air_time, everything()))
