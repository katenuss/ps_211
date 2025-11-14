# PS211: Correlation Demo
# 11/10/25

### LIBRARIES ###
library(readr)
library(ggplot2)

### CORRELATION ###
# We can use correlation analyses to examine the relationship between two continuous
# variables in our course survey data.

# First, we read in our survey data. We can store it in a variable called "survey_data."
survey_data <- read_csv("course_survey.csv")

# Remember, we can use the "head" function to see the columns of our data:
head(survey_data)

# First, let's examine the relationship between students' self-reported average
# hours of sleep per night (in the "sleep" column), and their social media use 
# in the ("social_media" column).

# We can use the function "cor" to compute the Pearson correlation coefficient (r) between these two variables.
# Remember, in R, to access a column, we use the $. 
sleep_social_media_correlation <- cor(survey_data$sleep, survey_data$social_media)

#print out result
sleep_social_media_correlation

# When we print out our result, we get the correlation coefficient (r) between sleep and social media use.
# A negative value indicates that as one variable increases, the other decreases.

# However, we also want to know if this correlation is statistically significant.
# To test this, we can use the "cor.test" function.
sleep_social_media_cor_test <- cor.test(survey_data$sleep, survey_data$social_media)

#print out result
sleep_social_media_cor_test

# When we print out this result, we now have the results of our correlation test.
# We can see the correlation coefficient (r) as well as the t statistic, df, p-value for the test.

# We can visualize this correlation using a scatterplot.
sleep_social_media_scatterplot <- ggplot(survey_data, aes(x = sleep, y = social_media)) +
  geom_point(color = "blue") +
  labs(x = "Average Hours of Sleep per Night",
       y = "Social Media Use (hours per day)") +
  theme_classic()

#display plot
sleep_social_media_scatterplot

# We can also add a regression line to the scatterplot to better visualize the relationship.
# We do this with the "geom_smooth" function, specifying "method = 'lm'" to add a linear regression line.
# By setting se = TRUE, we can also visualize the confidence interval around the line.

sleep_social_media_scatterplot_line <- sleep_social_media_scatterplot +
  geom_smooth(method = "lm", se = TRUE, color = "black")

#display plot
sleep_social_media_scatterplot_line


#PRACTICE: IS THERE A RELATIONSHIP BETWEEN SOCIAL MEDIA USE AND TV WATCHING?

# Compute correlation

# Test significance

# Make scatterplot

# Add trendline
