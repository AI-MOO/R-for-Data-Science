library(nycflights13)
library(tidyverse)

# Ranking ascending & descending
y <- c(1, 2, 2, NA, 3, 4)
# ascedning 
min_rank(y)
# descending 
min_rank(desc(y))