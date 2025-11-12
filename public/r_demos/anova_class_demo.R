# PS 211 Lectures 14 & 15: ANOVA
# Kate Nussenbaum - katenuss@bu.edu
# 11/10/25


### ONE-WAY BETWEEN-GROUPS ANOVA ###
#We use a one-way between-groups ANOVA when comparing more than two samples in a 
# between-groups (between-subjects) experimental design. 
# In other words, you have more than two groups, with different people in each group.  

#Example: We conduct a study on the number of hours students studied for a final exam, 
#in an Intro to Psychology course, by their college year.  

# First, we can create our data. In R, we use the "c" function to create a list of values.
first_year_hours <- c(2, 3, 4)
second_year_hours <- c(4, 4, 6)
third_year_hours <- c(3, 8, 9)

# Next, we can combine these into a data frame using the data.frame function.
study_data <- data.frame(
  participant = c(1:9),
  year = factor(rep(c("First Year", "Second Year", "Third Year"), each = 3)),
  hours = c(first_year_hours, second_year_hours, third_year_hours)
)

# we can then use the "aov" function to run an ANOVA. We will store the result in a variable
# called "anova_result."
anova_result <- aov(hours ~ year, data = study_data)

#If we type "anova_result" into the console, we will see some information about the ANOVA:
anova_result

# When you print this, you can see the two Sum of Squares terms: 
# The "year" term shows the sum of square for our between-groups variable.
# The "residuals" term shows the leftover variance, meaning the variance not explained by our
# between-groups variable. This corresponds to the within-group variance.

# However, to see the full ANOVA table, we need to use the "summary" function:
summary(anova_result)

# Compute the effect size (eta squared) (don't worry about this code, but run to see the output)
anova_summary <- summary(anova_result)[[1]]
ss_between <- anova_summary$`Sum Sq`[1]
ss_within  <- anova_summary$`Sum Sq`[2]
eta_squared <- ss_between / (ss_between + ss_within)
eta_squared


# Run post-hoc tests (Tukey HSD) to see which groups differ. 
# To do this, we will use the TukeyHSD funtion.
post_hoc <- TukeyHSD(anova_result)

#print out results of posthoc test
post_hoc

# What does this tell us?
# The output shows the pairwise comparisons between each group.
# For example, the first row shows the comparison between First Year and Second Year students.
# The "diff" column shows the difference in means between the two groups (1.33).
# The "p adj" column shows the adjusted p-value for this comparison (0.1847). 
# Since this p-value is greater than .05, we can conclude that there is no 
# statistically significant difference in study hours between First Year and Second Year students.
# The second row shows the comparison between First Year and Third Year students,
# and the third row shows the comparison between Second Year and Third Year students.

# Importantly, this is *similar* to running three-paired t tests, but not the same.
# By using the Tukey HSD test, we are controlling for the family-wise error rate,
# which is the increased chance of making a Type I error when conducting multiple tests.
# Thus, the Tukey HSD test is more conservative than running multiple t tests.
# That's why the p values are "adjusted."


### ONE-WAY WITHIN-GROUPS ANOVA ###
# We use a one-way within-groups ANOVA when comparing more than two samples in a
# within-groups (within-subjects) experimental design.
# In other words, you have more than two conditions, with all participants experiencing
# each condition.

#Example: We conduct a study on the number of hours students studied for a final exam,
#in an Intro to Psychology course, by the exam number (1, 2, 3).

# First, we can create our data. In R, we use the "c" function to create a list of values.
exam1_hours <- c(2, 3, 4)
exam2_hours <- c(4, 4, 6)
exam3_hours <- c(3, 8, 9)

# Next, we can combine these into a data frame using the data.frame function.
exam_study_data <- data.frame(
  participant = factor(rep(c(1:3), times = 3)),
  exam_number = factor(rep(c("Exam 1", "Exam 2", "Exam 3"), each = 3)),
  hours = c(exam1_hours, exam2_hours, exam3_hours)
)

# we can then use the "aov" function to run an ANOVA. We will store the result in a variable
# called "within_anova_result." Note that we now include an Error() term to account for the
# within-subjects design.
within_anova_result <- aov(hours ~ exam_number + Error(participant/exam_number), data = exam_study_data)

#If we type "within_anova_result" into the console, we will see some information about the ANOVA:
within_anova_result

# When you print this, you can see two Sum of Squares strata:
# Stratum 1 corresponds to the variance due to differences between participants.
#   - This is the between-subjects variance.
#   - There are 2 degrees of freedom here because we have 3 participants (n - 1 = 3 - 1 = 2).
#
# Stratum 2 corresponds to the variance due to our within-subjects variable (exam_number)
#   and the participant × exam_number interaction — this interaction term serves as
#   the error term for testing the within-subjects effect.
#   - There are 2 df for exam_number (k - 1 = 3 - 1 = 2)
#     and 4 df for the participant × exam_number interaction ((n - 1)(k - 1) = 2 × 2 = 4).

# To see the full ANOVA table, we need to use the "summary" function:
summary(within_anova_result)

# Note that we used the *same* data here as for the between-groups ANOVA example.
# Here, our F statistic is higher. This is because the within-subjects design
# reduces the error variance by accounting for individual differences between
# participants.



# Compute the effect size (eta squared) (don't worry about this code, but run to see the output)
within_anova_summary <- summary(within_anova_result)
ss_exam <- within_anova_summary[[2]][[1]]["exam_number", "Sum Sq"]
ss_error <- within_anova_summary[[2]][[1]]["Residuals", "Sum Sq"]
eta_squared <- ss_exam / (ss_exam + ss_error)
eta_squared
