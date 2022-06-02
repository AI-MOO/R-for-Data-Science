library(tidyverse)
library(nycflights13)

nycflights13::flights

#1. Had an arrival delay of two or more hours
filter(flights, arr_delay >= 120)

#2. Flew to Houston (IAH or HOU)
filter(flights, dest %in% c("IAH", "HOU"))
filter(flights, dest == "IAH" | dest == "HOU")


#3. Were operated by United, American, or Delta
# "AA","American Airlines Inc. (1960 - )"
# "UA","United Air Lines Inc. (1960 - )"
# "DL","Delta Air Lines Inc. (1960 - )"
filter(flights, carrier %in% c("AA","UA","DL"))

#4. Departed in summer (July, August, and September)
filter(flights, month %in% c(7,8,9))

#5. Arrived more than two hours late, but didn’t leave late
filter(flights, arr_delay >= 120, dep_delay == 0)

#6. Were delayed by at least an hour, but made up over 30 minutes in flight
filter(flights, dep_delay >= 60 & dep_delay - arr_delay > 30)

#7. Departed between midnight and 6am (inclusive)
filter(flights, dep_time %/% 100 %in% c(0:5) | dep_time == 600)
