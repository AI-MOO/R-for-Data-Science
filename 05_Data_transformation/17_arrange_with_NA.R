library(tidyverse)
library(nycflights13)

nycflights13::flights

# How could you use arrange() to sort all missing 
#values to the start? (Hint: use is.na()).
# the result: all NA obs will be listed in the bottom
view(arrange(flights, is.na(dep_time)))

