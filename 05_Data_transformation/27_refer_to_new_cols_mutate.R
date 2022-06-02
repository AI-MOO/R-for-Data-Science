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

# you can refer to columns you just created !
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)