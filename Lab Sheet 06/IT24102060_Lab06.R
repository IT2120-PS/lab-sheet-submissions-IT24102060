setwd("C:\\Users\\HP.DESKTOP-HMVTQ0R\\Desktop\\IT24102060")

# Exercise
# Question 1
# i. Distribution of X
# ii. Probability that at least 47 students passed
prob_47_or_more <- 1 - pbinom(46, 50, 0.85, lower.tail = TRUE)
prob_47_or_more


# Question 2: Call center calls
# Part 1: Distribution of X
# Poisson distribution with lambda=12
p15 <- dpois(15, 12)  # P(X=15)