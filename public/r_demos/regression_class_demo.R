# PS 211: Lecture 17: Regression
# Kate Nussenbaum - katenuss@bu.edu
# 11/15/25

### LIBRARIES ###
library(readr)
library(ggplot2)

### SIMPLE LINEAR REGRESSION ###
# We can use regression to examine the relationship between two continuous
# variables in our course survey data.

# First, we read in our survey data. We can store it in a variable called "survey_data."
survey_data <- read_csv("course_survey.csv")

# Remember, we can use the "head" function to see the columns of our data:
head(survey_data)

# First, let's examine the relationship between students' self-reported average
# hours of sleep per night (in the "sleep" column), and their social media use 
# in the ("social_media" column).

# We can use the function "lm" to run a regression predicting sleep from social media use.
sleep_social_media_regression <- lm(sleep ~ social_media, data = survey_data)

#print out result using the "summary" function
summary(sleep_social_media_regression)

# When we print out our result, we get the regression coefficients, R-squared value, and significance levels.
# The coefficient for social media indicates the change in sleep hours for each additional hour of social media use.
# We also see the t statistic and p-value for the predictor.

# We can make a scatterplot of this relationship with a trend line using ggplot2.
sleep_social_media_scatterplot <- ggplot(survey_data, aes(x = social_media, y = sleep)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(y = "Average Hours of Sleep per Night",
       x = "Social Media Use (hours per day)") +
  theme_classic()

#display plot
sleep_social_media_scatterplot

# We can see that the y intercept represents the predicted value of sleep when social media use is 0.
# The slope represents the change in sleep hours for each additional hour of social media use.


### MULTIPLE REGRESSION ###

# Now imagine we want to examine how social media use AND age watching predict sleep.
# We can add age as an additional predictor to our model:

sleep_social_media_age_regression <- lm(sleep ~ social_media + age, data = survey_data)

#print out results
summary(sleep_social_media_age_regression)

# If we want to be able to more directly compare the predictors, we can standardize them with the "scale" function:

# Standardize variables
survey_data$sleep_z <- scale(survey_data$sleep)
survey_data$social_media_z <- scale(survey_data$social_media)
survey_data$age_z <- scale(survey_data$age)

# Run regression with standardized variables
sleep_social_media_age_regression_z <- lm(sleep_z ~ social_media_z + age_z, data = survey_data)

#print out results
summary(sleep_social_media_age_regression_z)

#You can see that our estimates changed, but our significance levels remained the same.
# Now, the coefficients represent the change in standard deviations of sleep for each one standard deviation increase
# in social media use or age.
# This allows us to compare the relative strength of each predictor in the model.
# The significance levels don't change because the underlying data and relationships are the same; only the scale of measurement has changed.
# Thus, standardizing helps with interpretation and comparison of predictors, but does not affect the actual relationships or their significance.


