data()
plot(women$height, women$weight) 

# Models to compare
m1 <- lm(weight~height, data = women)
m2 <- lm(weight~poly(height, 2, raw = TRUE), data = women)
m3 <- lm(weight~poly(height, 3, raw = TRUE), data = women)

# To compare these models 
comp <- performance::compare_performance(m1, m2, m3); comp
plot(comp) # needs see package

# Hypo test for comparing RSS of these models (these are Nested models)

anova(m1, m2, m3)

# Results shows that adding second or third degree polynomial term 
# statistically significantly reduces RSS.
# Note: See more about coxtest, jtest, encomptest & waldtest 
# for comparing non-nested models.

# Alternate way to add polynomial terms
m2 <- lm(weight~height + I(height^2), data=women) 

# Note: It is just a sample code.
# For such small sample, results are not reliable

# For more detailed code on linear models including interaction term, 
# diagnostic plots, post estimation analysis using statistical tests, 
# possible solutions, data prep, etc. refer learn R repository

