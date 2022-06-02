library(tidyverse)
library(nycflights13)

nycflights13::flights

# 4. Which flights travelled the longest? 
# Which travelled the shortest?

# the longest 
view(arrange(flights, desc(air_time)))

# the shortest 
view(arrange(flights, air_time))
