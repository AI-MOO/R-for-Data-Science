library(nycflights13)
library(tidyverse)

# near
near(1,1.000000000000000000000000001)
#> [1] TRUE

near(sqrt(2) ^ 2,  2)
#> [1] TRUE
near(1 / 49 * 49, 1)
#> [1] TRUE

