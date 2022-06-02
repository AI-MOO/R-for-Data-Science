library(tidyverse)
library(nycflights13)

nycflights13::flights 

# add flight times columns in mins 
flights_times <- mutate(flights,
                        dep_time_mins = (dep_time %/% 100 * 60 + dep_time %% 100) %% 1440,
                        sched_dep_time_mins = (sched_dep_time %% 100 * 60 + sched_dep_time %% 100) %% 1440)

# view only relevant columns
select(flights_times, dep_time, dep_time_mins, sched_dep_time,
       sched_dep_time_mins)