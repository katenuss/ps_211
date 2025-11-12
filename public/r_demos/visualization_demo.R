## PS 211 Lecture 3: Data Visualizations
# Kate Nussenbaum - katenuss@bu.edu
# 8/28/25

#library installation
#install.packages("dplyr")
#install.packages("tidyr")
#install.packages("ggplot2")

#load needed libraries
library(dplyr)
library(tidyr)
library(ggplot2)

# DEMO 1: Tooth Growth Data

#get tooth growth data
data <- as.data.frame(ToothGrowth)

# make a histogram of tooth length
ggplot(data, aes(x = len)) +
  geom_histogram()

# Make it nice
# make histogram of tooth lengths
ggplot(aes(x=len), data=data) +
  geom_histogram(binwidth=1, fill="lightblue", color="black") +
  labs(title="Histogram of Tooth Lengths",
       x="Guinea Pig Tooth Length",
       y="Count") +
  theme_bw()


# make scatter plot of tooth length by supplement dose
ggplot(aes(x = dose, y=len), data=data) +
  geom_point(color="darkblue", size=1) +
  geom_smooth(method="lm", color="black", se=TRUE) +
  labs(title="Scatterplot of Tooth Length by Supplement Dose",
       x="Supplement Dose",
       y="Guinea Pig Tooth Length") +
  theme_bw()


#frequency table example
data %>% 
  group_by(supp) %>%
  summarise(count = n()) %>%
  mutate(percentage = (count/sum(count))*100)






