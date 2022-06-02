library(tidyverse)
library(nycflights13)

nycflights13::flights

# This is a shortcut for x >= left & x <= right
# function (x, left, right) 
# {
#  .Call("dplyr_between", PACKAGE = "dplyr", x, left, right)
# }
filter(flights, between(month,7,9))

view(filter(flights, between(dep_time %/% 100, 0, 5) | dep_time == 600))
