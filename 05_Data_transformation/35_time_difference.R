library(tidyverse)
library(nycflights13)

nycflights13::flights 

time2min <- function(x){
    (x %/% 100 * 60 + x %% 100) %% 1440 
}

# check if air time = arr_time - dep_time
df = mutate(flights, air_time, 
            arr_dep_diff = time2min(arr_time) - time2min(dep_time),
            air_time_diff = air_time - arr_dep_diff
            )
                      
# view the relevant columns
select(df, air_time, arr_dep_diff, air_time_diff)

nrow(filter(df, air_time_diff != 0))
