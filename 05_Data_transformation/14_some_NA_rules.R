library(tidyverse)
library(nycflights13)

nycflights13::flights

# Why is NA ^ 0 not missing? Why is NA | TRUE not missing?
# Why is FALSE & NA not missing? 
# Can you figure out the general rule? 
# (NA * 0 is a tricky counterexample!)

# Anything power of zero is one. The evaluation is "dep_time == 1"
filter(flights, dep_time == NA ^ 0 )

# Anything or true is always true. Thus returning all entries.
filter(flights, dep_time == NA | TRUE )

# False and anything is always false. Thus returning nothing.
filter(flights, dep_time == FALSE & NA )

# NA within a calculation always results to NA. The dep_time cannot be compare to an unknown value. Thus resulting nothing.
filter(flights, dep_time == NA * 0)


