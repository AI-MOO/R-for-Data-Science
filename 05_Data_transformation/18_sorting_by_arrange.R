library(tidyverse)
library(nycflights13)

nycflights13::flights

# Sort flights to find the most delayed flights.
arrange(flights, desc(dep_delay))

# Find the flights that left earliest.
arrange(flights, dep_delay)
