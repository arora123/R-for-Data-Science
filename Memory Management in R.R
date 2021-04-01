# https://www.linkedin.com/posts/drnishaarora_rtips-learnersworld-memorymanagement-activity-6783242113288032256-7NAd
http://adv-r.had.co.nz/memory.html
https://r4ds.had.co.nz/pipes.html

# To get an estimate of the memory that is being used to store an R object
object.size("12")
object.size("")
object.size(12)
object.size(12, '12')
# built-in object.size(). object.size() only takes a single object

pryr::object_size(12)
pryr::object_size('12')
pryr::object_size(12, '12')
pryr::object_size(12, '12', mtcars, mean)
pryr::object_size(12, '12', mtcars, iris)

library(dplyr)
diamonds <- ggplot2::diamonds
diamonds2 <- diamonds %>% 
  mutate(price_per_carat = price / carat)

pryr::object_size(diamonds)
pryr::object_size(diamonds2)
pryr::object_size(diamonds, diamonds2)

diamonds$carat[1] <- NA
pryr::object_size(diamonds)
pryr::object_size(diamonds2)
pryr::object_size(diamonds, diamonds2)


# -------------------------------------------------------------------------

library(pryr)
sizes <- sapply(0:50, function(n) object_size(seq_len(n)))
plot(0:50, sizes, xlab = "Length", ylab = "Size (bytes)", 
     type = "s")


x <- 1:1e6
object_size(x)

y <- list(x, x, x)
object_size(y)


x1 <- 1:1e6
y1 <- list(1:1e6, 1:1e6, 1:1e6)

object_size(x1)
object_size(y1)
object_size(x1, y1)
object_size(x1) + object_size(y1) == object_size(x1, y1)

object_size("banana")
object_size(rep("banana", 10))
object_size("banana")*10
