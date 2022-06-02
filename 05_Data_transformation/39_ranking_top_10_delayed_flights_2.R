library(tidyverse)
library(nycflights13)

nycflights13::flights 

# Find the 10 most delayed flights using a ranking function.
# How do you want to handle ties? Carefully read the 
# documentation for min_rank().


# OTHER WAYS OF SOLVING THE SAME Problem
# Apporoach 01 
flights_delayed2 <- arrange(flights, desc(dep_delay))
flights_delayed2 <- slice(flights_delayed2, 1:10)
select(flights_delayed2,  month, day, carrier, flight, dep_delay)

# Apporoach 02
flights_delayed3 <- top_n(flights, 10, dep_delay)
flights_delayed3 <- arrange(flights_delayed3, desc(dep_delay))
select(flights_delayed3, month, day, carrier, flight, dep_delay)


