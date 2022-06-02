library(tidyverse)
library(nycflights13)

nycflights13::flights

not_cancelled <- flights %>% 
  filter(!is.na(dep_delay), !is.na(arr_delay))

# When do the first and last flights leave each day?
not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(
    first_dep = first(dep_time), 
    last_dep = last(dep_time)
  )


not_cancelled %>% 
  group_by(year, month, day) %>% 
  mutate(r = min_rank(desc(dep_time))) %>% 
  filter(r %in% range(r))