library(tidyverse)
library(nycflights13)

nycflights13::flights

# 3. Sort flights to find the fastest flights.
arrange(flights, desc(distance %/% air_time))

