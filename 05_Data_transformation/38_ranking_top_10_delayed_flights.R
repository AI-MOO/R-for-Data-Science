library(tidyverse)
library(nycflights13)

nycflights13::flights 

# Find the 10 most delayed flights using a ranking function.
# How do you want to handle ties? Carefully read the 
# documentation for min_rank().

flights_delayed <- mutate(flights,
                 dep_delay_row_number = row_number(dep_delay),
                 dep_delay_min_rank = min_rank(dep_delay),
                 dep_delay_dense_rank = dense_rank(dep_delay)
)

flights_delayed <- filter(flights_delayed, 
                          !(dep_delay_min_rank > 10 | dep_delay_row_number > 10 |
                              dep_delay_dense_rank > 10))

flights_delayed <- arrange(flights_delayed, dep_delay_min_rank)
view(select(flights_delayed, month, day, carrier, flight, dep_delay, 
             dep_delay_min_rank, dep_delay_row_number, dep_delay_dense_rank))

# you can use print function as the following
#print(select(flights_delayed, month, day, carrier, flight, dep_delay, 
#            dep_delay_min_rank, dep_delay_row_number, dep_delay_dense_rank), n=Inf)
