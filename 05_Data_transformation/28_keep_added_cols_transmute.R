library(tidyverse)
library(nycflights13)

nycflights13::flights

# Creating Narrow Dataset 
flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)

# to keep the cols you created use transmute
transmute(flights_sml,
          gain = dep_delay - arr_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours)