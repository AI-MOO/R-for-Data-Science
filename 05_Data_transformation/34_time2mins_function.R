library(tidyverse)
library(nycflights13)

nycflights13::flights 

time2min <- function(x){
    (x %/% 100 * 60 + x %% 100) %% 1440 
}

flights_times <- mutate(flights, 
                        dep_time_mins = time2min(dep_time),
                        sched_dep_time_mins = time2min(sched_dep_time)
                        )

select(flights_times, dep_time, dep_time_mins, 
            sched_dep_time, sched_dep_time_mins)

