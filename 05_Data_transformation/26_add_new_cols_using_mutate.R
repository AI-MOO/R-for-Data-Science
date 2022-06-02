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

view(mutate(flights_sml, 
       gain = dep_delay - arr_delay, 
       speed = distance / air_time * 60
       ))