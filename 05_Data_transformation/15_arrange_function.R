library(tidyverse)
library(nycflights13)

nycflights13::flights

# arrage function
arrange(flights, year, month, day)

# arrage function in descending order
arrange(flights, desc(dep_delay))



