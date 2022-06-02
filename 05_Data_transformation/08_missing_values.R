library(tidyverse)
library(nycflights13)

# missing values are contagious
NA > 5
#> [1] NA
10 == NA
#> [1] NA
NA + 10
#> [1] NA
NA / 2
#> [1] NA


NA == NA
#> [1] NA