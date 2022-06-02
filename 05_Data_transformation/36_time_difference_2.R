library(tidyverse)
library(nycflights13)

nycflights13::flights 

time2min <- function(x){
    (x %/% 100 * 60 + x %% 100) %% 1440 
}

# check if air time = sched_dep_time - dep_time
df <- mutate(flights,
            dep_delay_act = time2min(sched_dep_time) - time2min(dep_time),
            delays_diff = dep_delay + dep_delay_act
            )



# view the relevant columns
select(df, dep_delay, dep_delay_act, delays_diff)                      
nrow(filter(df, delays_diff != 0))
