library(tidyverse)
library(nycflights13)


# Let x be Mary's age. We don't know how old she is.
x <- NA

# Let y be John's age. We don't know how old he is.
y <- NA

# Are John and Mary the same age?
x == y
#> [1] NA
# We don't know!

# check if a value is NA
is.na(x)

