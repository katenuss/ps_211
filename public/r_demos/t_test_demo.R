## PS 211 Lecture 12: T Tests
# Kate Nussenbaum - katenuss@bu.edu
# 10/28/25


#Load needed libraries
library(dplyr)
library(tidyr)

#### PAIRED-SAMPLES T TEST ####
# Imagine four different people tasted a $10 bottle and a $90 bottle of wine and 
# rated them on a scale from 1-5. We want to know if there is a significant difference
# in ratings between the two bottles.

# First, we can create our data. In R, we use the "c" function to create a list of values.
low_price_ratings <- c(1.5, 2.3, 2.8, 3.4)
high_price_ratings <- c(2.9, 3.5, 3.5, 4.9)

# Next, we can compute the mean of each set of ratings using the "mean" function.
mean_low <- mean(low_price_ratings)
mean_high <- mean(high_price_ratings)

# Remember, in R, if we want to VIEW these values, we need to type them again so that they print 
# in the "console."
mean_low
mean_high

# When we print these, we can see that the mean rating for the low-price bottle is 2.5
# and the mean rating for the high-price bottle is 3.7. But is this difference statistically 
# significant or is it due to sampling error?

# We can use the t.test function to conduct a paired-samples t test. We can store the 
# result of our t.test in variable. We can name this variable anything, but here
# we will call it "paired_t_test_result."
paired_t_test_result <- t.test(low_price_ratings, high_price_ratings, paired = TRUE)

# Note that we are using the term "paired = TRUE" to indicate that this is a paired-samples 
# t test. Once we run our test, we can print the result:
paired_t_test_result
# From the output, we can see that the t statistic is -6.74, the degrees of freedom is 3, 
# and the p-value is 0.00666. Since the p-value is less than .05, we can conclude that 
# there is a statistically significant difference in ratings between the two bottles of wine.




#### INDEPENDENT-SAMPLES T TEST ####
# Now, imagine we have two different groups of people. One group tastes the $10 bottle
# and the other group tastes the $90 bottle. We want to know if there is a significant
# difference between the ratings.

# We can run the same t test, but change the paired=TRUE term to paired=FALSE.
# This will tell R that the ratings are not paired. We will also tell R to assume
# equal variances between the two groups by using the var.equal=TRUE term. This means
# that we are assuming that the underlying populations from which the two samples are
# drawn have the same variance.

independent_t_test_result <- t.test(low_price_ratings, high_price_ratings, paired = FALSE, var.equal = TRUE)

#  Once we run our test, we can print the result:
independent_t_test_result

# From the output, we can see that the t statistic is -2.053, the degrees of freedom is 6,
# and the p-value is 0.0859. Since the p-value is greater than .05, we can conclude that
# there is NOT a statistically significant difference in ratings between the two bottles of wine.

#Thought question: Why is the t statistic for the independent-samples t test smaller
# than the t statistic for the paired-samples t test? Why is the p-value larger?


#### WORKSHEET EXAMPLE ####
# Let's run our independent t-test again with the values from our worksheet example.

# First, we can create our data. In R, we use the "c" function to create a list of values.
low_price_ratings <- c(1.5, 2.3, 2.8, 3.4)
high_price_ratings <- c(2.9, 3.5, 3.5, 4.9, 5.2)

# Next, we can compute the mean of each set of ratings using the "mean" function.
mean_low <- mean(low_price_ratings)
mean_high <- mean(high_price_ratings)

# Remember, in R, if we want to VIEW these values, we need to type them again so that they print 
# in the "console."
mean_low
mean_high

#Run t-test
worksheet_t_test_result <- t.test(low_price_ratings, high_price_ratings, paired = FALSE, var.equal = TRUE)

#  Once we run our test, we can print the result:
worksheet_t_test_result

# Did you get the same results here as by hand?
