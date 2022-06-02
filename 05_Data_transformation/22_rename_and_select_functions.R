library(tidyverse)
library(nycflights13)

nycflights13::flights

# rename function
rename(flights, tail_num = tailnum)
select(flights, tailnum)