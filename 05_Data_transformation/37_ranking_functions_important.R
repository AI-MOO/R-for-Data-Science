library(tidyverse)
library(nycflights13)

nycflights13::flights 

# Ranking Functions (important)


rankme <- tibble(
  x = c(10, 5, 1, 5, 5)
)

rankme <- mutate(rankme,
                 x_row_number = row_number(x),
                 x_min_rank = min_rank(x),
                 x_dense_rank = dense_rank(x)
)
arrange(rankme,x)
