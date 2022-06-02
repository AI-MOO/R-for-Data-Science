library(tidyverse)
library(nycflights13)


# filter will not include False & Nan values
df <- tibble(x = c(1, NA, 3), y = c(20,30,40))
filter(df, x > 1)

# filter for NA explicitly
filter(df, is.na(x) | x > 1)
