

# Example_1 ---------------------------------------------------------------

x=sample(10,6)
x

# Usinf function compositions
sum(tan(sin(log(x))))


# Using pipe operator [Ctr + Shift + M]
library(magrittr)
x %>% 
  log() %>%
  sin() %>% 
  tan() %>% 
  sum()


# Example_2 ---------------------------------------------------------------

# create two vectors and calculate Euclidian distance between them
x1 <- 1:5; x2 <- 2:6

sqrt(sum((x1 - x2)^2)) # Using functions

(x1 - x2)^2 %>% 
  sum() %>% 
  sqrt() # Using pipes


# Example_3 Object Size ---------------------------------------------------

diamonds <- ggplot2::diamonds
diamonds2 <- diamonds %>% 
  dplyr::mutate(price_per_carat = price / carat)

pryr::object_size(diamonds)
pryr::object_size(diamonds2)
pryr::object_size(diamonds, diamonds2)

# There's no need to duplicate all that data, 
# so the two data frames have variables in common

