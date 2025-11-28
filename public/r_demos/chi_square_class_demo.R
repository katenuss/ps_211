# PS 211: Chi Square Demo
# 11/28/25

### LIBRARIES ###
library(readr)
library(ggplot2)

### CHI SQUARE GOODNESS OF FIT ###
# We can use chi square tests to examine relationships between categorical variables.
# First, we can test whether the distribution of students' favorite Top 5 Spotify artists
# differs from what we would expect by chance (uniform distribution).

# Let's read in our survey data. We can store it in a variable called "survey_data."
survey_data <- read_csv("course_survey.csv")

# Remember, we can use the "head" function to see the columns of our data:
head(survey_data)

# Let's make a table of students' favorite Top 5 Spotify artists with the "table" function.
favorite_artist_table <- table(survey_data$spotify)

#print table
favorite_artist_table

# We can make a bar plot of the favorite artists using ggplot2.
favorite_artist_barplot <- ggplot(survey_data, aes(x = spotify)) +
  geom_bar(fill = "lightblue", color = "black") +
  geom_hline(yintercept = mean(favorite_artist_table), linetype = "dashed", color = "red") +
  labs(y = "Number of Students",
       x = "Favorite Top 5 Spotify Artist") +
  theme_classic()

#display plot
favorite_artist_barplot

# We can use the "chisq.test" function to run a chi square goodness of fit test.
favorite_artist_chisq <- chisq.test(favorite_artist_table)

#print out results
favorite_artist_chisq 

# From the output, we can see the chi square statistic, degrees of freedom, and p-value.



### CHI SQUARE TEST OF INDEPENDENCE ###
# Now, let's examine whether there is a relationship between students' favorite Top 5 Spotify artist
# and their preferred coffee chain using a chi square test of independence.

# We can make a contingency table using the "table" function.
contingency_table <- table(survey_data$spotify, survey_data$starbucks_dunkin)

#print table
contingency_table

# We can make a grouped bar plot of the contingency table using ggplot2.
contingency_barplot <- ggplot(survey_data, aes(x = spotify, fill = starbucks_dunkin)) +
  geom_bar(position = "dodge", color = "black") +
  labs(y = "Number of Students",
       x = "Favorite Top 5 Spotify Artist",
       fill = "Preferred Coffee Chain") +
  theme_classic()

#display plot
contingency_barplot

# We can use the "chisq.test" function to run a chi square test of independence.
spotify_chain_chisq <- chisq.test(survey_data$spotify, survey_data$starbucks_dunkin)

#print out results
spotify_chain_chisq

# From the output, we can see the chi square statistic, degrees of freedom, and p-value.
# If the p-value is less than our significance level (e.g., 0.05), we can conclude that there is a significant relationship
# between favorite Spotify artist and preferred coffee chain.

