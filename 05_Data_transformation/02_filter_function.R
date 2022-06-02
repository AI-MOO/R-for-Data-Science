library(nycflights13)
library(tidyverse)

# importing tibble
nycflights13::flights


# use filter function to select specfic observations
(jan1 <- filter(flights, month == 1, day == 1))

(dec25 <- filter(flights, month == 12, day == 25))
