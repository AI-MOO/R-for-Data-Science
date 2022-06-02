library(tidyverse)
library(nycflights13)

nycflights13::flights

not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))

# When do the first and last flights leave each day?
not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(
    first = min(dep_time),
    last = max(dep_time)
  )