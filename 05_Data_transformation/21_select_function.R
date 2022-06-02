library(tidyverse)
library(nycflights13)

nycflights13::flights

# select function

# Select columns by name
select(flights, year, month, day)

# Select all columns between year and day (inclusive)
select(flights, year:day)


# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))
