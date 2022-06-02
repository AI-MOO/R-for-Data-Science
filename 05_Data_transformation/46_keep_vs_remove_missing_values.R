library(tidyverse)
library(nycflights13)

nycflights13::flights

# keeping missing values vs removing them 

flights %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay))


flights %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay, na.rm = TRUE))



