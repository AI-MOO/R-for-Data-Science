library(tidyverse)
library(nycflights13)

nycflights13::flights

# create a tibble
df <- tibble(x = c(5, 2, NA))
arrange(df, x)

# use arrange with descending order
arrange(df, desc(x))

# NA always at the end of tibble.
