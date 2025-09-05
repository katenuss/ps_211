---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 3
exportFilename: ps211_fall2025_lecture3
---

# PS 211: Introduction to Experimental Design
## Spring 2025 · Section C1
### Lecture 3: Frequency distributions & visual displays of data

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and reminders

:: content ::

- You should now have R and R Studio installed on your computer.  
- Please see me or Juneau *right away* if you have any issues.
- Homework 1 has been posted and is due (via Blackboard) on Monday, September 15 at 11:59 PM.
    - Homework 1 mostly covers material from Lectures 1 - 3, with a small amount of material from Lecture 4.
    - You should be able to do most of it after today's lecture.
- In today's lecture, we will also go over instructions for using R Markdown to complete Homework 1.
- My office hours tomorrow (Sept. 10) are cancelled, but if you need to meet, please Slack me and we can find an alternate time.


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Review: Two branches of statistics

:: left ::

**Descriptive statistics** 
- Organize, summarize, and communicate numerical information

<p v-click>

<img src="/images/lecture3/tooth_hist.png" alt="tooth hist" class="mx-auto" />

</p>

:: right ::

**Inferential statistics**
- Use sample data to make inferences about a larger population

<p v-click>

<img src="/images/lecture3/tooth_scatter.png" alt="tooth scatter" class="mx-auto" />

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Descriptive statistics

:: content ::

- Descriptive stats allow us to summarize the characteristics or properties of a distribution of data.
    - They enable us to describe our *sample* or *population*.

<br> 

- There are many ==correct== ways to present the same data.
    - Our job is to choose the ways that are most ==useful==.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# How should we describe data?

:: left ::

## Raw data
- The original measurements or observations collected in a study.
- Have not been transformed, summarized, or analyzed.

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Why is presenting raw data limiting?
  </div>
</div>

<p v-click>

**Answer:**  It's hard to see patterns or make comparisons when looking at a list of numbers. It's generally helpful to organize or summarize them in some way.

</p>


:: right ::

<img src="/images/lecture3/raw_data.png" alt="tooth scatter" class="mx-auto w-1/3" />


---
layout: top-title
color: indigo-light
align: lt
---


:: title ::

# How should we make sense of raw data?

:: content ::

## One way: Frequency distributions
- Displays count or proportion of each value (or range of values) in a dataset.
- Options include:
    - Frequency tables
    - Grouped frequency tables
    - Histograms


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---


:: title ::

# Frequency tables

:: left ::

- A frequency table is a visual representation of a data set that shows how often (frequently) each value occurred.
- Values are listed in one column, and the count of individual scores with that value are listed in the second column.
  - All possible values are listed, even if the count is 0.

:: right ::

<img src="/images/lecture3/volcano_frequency.png" alt="volcano frequency" class="mx-auto w-2/3" />
   
---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---


:: title ::

# Creating a frequency table

:: left ::

## General steps

- Create two columns
  - First column: list all possible values of the variable
  - Second column: tally the number of times each value occurs


:: right ::

## In R:

- The 'dplyr' package can be used to create frequency tables easily.

```r
library(dplyr)

data %>%
  group_by(variable) %>%
  summarize(count = n())
```
<br>

### For example:

```r
volcano_data %>%
  group_by(number_of_volcanoes) %>%
  summarize(count = n())
```


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---


:: title ::

# Including percentages

:: left ::

## General steps

- Create two columns
  - First column: list all possible values of the variable
  - Second column: tally the number of times each value occurs
  - **Third column**: calculate the percentage of the total for each value
    - Percentage = (Count / Total number of observations) * 100


:: right ::

## In R:

- The 'dplyr' package can be used to create frequency tables easily.

```r
library(dplyr)

data %>%
  group_by(variable) %>%
  summarize(count = n()) %>%
  mutate(percentage = (count / sum(count)) * 100)
```
<br>

### For example:

```r
volcano_data %>%
  group_by(number_of_volcanoes) %>%
  summarize(count = n()) %>%
  mutate(percentage = (count / sum(count)) * 100)
```



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---


:: title ::

# Grouped frequency tables

:: left ::

- Sometimes frequency tables can be limited
  - What if data cover a wide range of values?
  - What if there are many unique values? (i.e., for continuous variables)
    - Listing all the possible values can basically be equivalent to displaying the raw data.


:: right ::

## Grouped frequency tables:

- Show data spanning a specific interval, rather than individual values.
- Intervals (or "bins") are created to group values together.




---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---


:: title ::

# Creating a grouped frequency table

:: left ::

## General steps
- Determine the range of values in the dataset (max - min).
- Decide on the number of intervals (or "bins") to create.
- Determine the bottom of the lowest interval.
- Create intervals of equal width to cover the entire range of data.
- Tally the number of observations that fall within each interval.

:: right ::

## Grouped frequency tables in R:

The 'cut' function in R can be used to create intervals.

```r
library(dplyr)

data %>%
  mutate(interval = 
        cut(variable,
        breaks = seq(min, max, by = bin_width))) %>%
  group_by(interval) %>%
  summarize(count = n())
```

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---


:: title ::

# Converting a frequency table to a grouped frequency table

:: left ::

<img src="/images/lecture3/volcano_frequency.png" alt="volcano frequency" class="mx-auto w-2/3" />

:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    How would you convert this table to a grouped frequency table with intervals of width 5?
  </div>
</div>

<p v-click>

**Answer:** Create intervals like 0-4, 5-9, 10-14, etc., and tally the counts for each interval.

</p>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is an advantage of using a grouped frequency table? What is a disadvantage?
  </div>
</div>


<p v-click>

**Answer:** Advantage: Easier to see patterns in data with many unique values. Disadvantage: Loss of detail about individual values.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Histograms

:: content ::
- Graphs are often more effective than tables for seeing patterns in data.
- A **histogram** is a graphical representation of a grouped frequency table.
- The x-axis shows the intervals (or "bins") of values.
- The y-axis shows the frequency (or count) of observations in each interval.
- A histogram *looks* like a bar graph, but ==the y-axis always represents frequency or count==, not a separate variable.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Histograms in the wild
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-1 rotate-1 transform">
    I made this in R for an actual paper.
  </div>
</div>

:: content ::

<br> 

<div class="flex justify-center space-x-4">
  <img src="/images/lecture3/histogram1.png" alt="histogram" class="w-1/2" />
</div>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Creating a histogram in R

:: content ::

- ggplot2 is a popular R library for creating graphs, including histograms.
- Your assignments will use it throughout the semester.
- The 'syntax' (meaning the way you write the code) can be a bit tricky at first, but you'll get the hang of it!
- Basic idea:
  - Tell R which dataset to use with `ggplot()`.
  - Use `aes()` to "map" the variable you want on the x-axis.
  - Use `geom_histogram()` to create the histogram.

```r
library(ggplot2)

ggplot(data, aes(x = variable)) +
  geom_histogram(binwidth = 5)
```

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# R histogram demo

:: content ::

(R Demo)

- Open R Studio and create a new script.
- Load the ggplot2 library with `library(ggplot2)`.
- Use the `ggplot()` function to specify the dataset and mapping.
- Add `geom_histogram()` to create the histogram.
- Run the script to generate the histogram.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Distributions

:: content ::
- Histograms also let us see the **distribution** of a variable.
- A distribution describes how values of a variable are spread or clustered.
- The shape of a distribution provides key insights into the characteristics of the data.

<img src="/images/lecture3/yelp_stars.webp" alt="yelp stars" class="mx-auto w-1/2" />

==Note: Some people say histograms are for continuous variables only and that the bars should touch to indicate this.== I don't think this is a hard-and-fast rule, but it's something to be aware of.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Normal distributions

:: content ::
- A **normal distribution** is a specific type of distribution that is symmetric and bell-shaped.
- We are going to discuss normal distributions much more extensively later in the course.
- For now, just know that many variables in nature and social science tend to follow a normal distribution.

<img src="/images/lecture3/normal_distribution.png" alt="normal distribution" class="mx-auto w-1/2" />



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Skew

:: content ::
- When data are not symmetrically distributed, we say they are **skewed**.
- The ends of the distribution are called the =="tails."==
- **Positively skewed** (or right-skewed) distributions have a long tail on the right side.
- **Negatively skewed** (or left-skewed) distributions have a long tail on the left side.

<img src="/images/lecture3/skew.png" alt="skew" class="mx-auto w-1/2" />


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Positive skew and floor effects

:: content ::
- **Positive skew**: The ==tail== of the distribution extends to the right.
- Sometimes a positive skew can indicate a **floor effect**.
- A **floor effect** occurs when a large number of observations cluster at the lower end of the scale, with few observations at the higher end.


<img src="/images/lecture3/income_dist.jpeg" alt="income distribution" class="mx-auto w-1/2" />


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Negative skew and ceiling effects

:: content ::
- **Negative skew**: The ==tail== of the distribution extends to the left.
- Sometimes a negative skew can indicate a **ceiling effect**.
- A **ceiling effect** occurs when a large number of observations cluster at the higher end of the scale, with few observations at the lower end.


<img src="/images/lecture3/retirement_age.png" alt="retirement age distribution" class="mx-auto w-1/2" />



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Practice: Skew

:: content ::

Consider these three variables: finishing times in a marathon of recreational runners, number of university dining hall meals eaten in a day, and scores on a scale of extroversion from a randomly sampled population.

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Which variable do you think would be most likely to show a positive skew? 
  </div>
</div>

<p v-click>

**Answer:** Finishing times in a marathon are likely to show a positive skew, as many runners may finish within a certain time range, but a few may take much longer.

</p>


<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform mt-4">
    Which variable do you think would be most likely to be normally distributed?
  </div>
</div>

<p v-click>

**Answer:** Scores on a scale of extroversion are often normally distributed in a randomly sampled population, as most people tend to fall in the middle range of extroversion, with fewer people being extremely introverted or extremely extroverted.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# More practice

:: content ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Can nominal variables have a skewed distribution? Why or why not?
  </div>
</div>

<p v-click>

**Answer:** No, nominal variables cannot have a skewed distribution because they represent categories without any inherent order or ranking. Skewness applies to the distribution of ordinal or continuous variables, where the data can be arranged along a scale.

</p>


<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform mt-4">
    You want to visualize the distribution of ages in a sample of adults. Would you use a frequency table, a grouped frequency table, or a histogram? 
  </div>
</div>

<p v-click>

**Answer:** Either a grouped frequency table or a histogram would be appropriate for visualizing the distribution of ages in a sample of adults. A grouped frequency table would summarize the data into age intervals, while a histogram would provide a graphical representation of the same information.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Moving beyond histograms: More on data visualization

:: content ::
- Histograms (and frequency tables) are just one of many ways to visualize data.
- There are **many** other types of graphs that can be useful for different purposes.
- We are going to go through some of them now.
- We will also discuss some general principles of effective data visualization.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Bar graphs

:: left ::

- Bar graphs are like histograms, but they are used for categorical (nominal or ordinal) variables rather than continuous variables.
  -  They can also display other measures on the y axis, not just frequency or count.
- Each bar represents a category, and the length or height of the bar corresponds to the value it represents.

:: right ::

<img src="/images/lecture3/barplot.png" alt="bar graph" class="mx-auto w-3/4" />

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is one advantage of using a bar graph? What is one disadvantage?
  </div>
</div>

<p v-click>

**Answer:** One advantage of using a bar graph is that it can display data for different categories side by side, making it easy to compare them. A disadvantage is that it may not show the full distribution of the data.

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Scatter plots

:: left ::

- Scatter plots are used to visualize the relationship between two variables.
  - Usually continuous variables, but can also be used with ordinal variables.
- Each point on the graph represents an observation, with its position determined by the values of the two variables.
- Trendlines can be added to show the best-fitting line through the data points, indicating the overall direction of the relationship.
  - We will discuss how to calculate and interpret trendlines later in the course.


:: right ::

<img src="/images/lecture3/scatter_plot.png" alt="scatter plot" class="mx-auto w-1/2" />

<img src="/images/lecture3/scatter_plot2.png" alt="scatter plot" class="mx-auto w-1/2" />


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Scatter plots

:: left ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is one advantage of using a scatter plot? 
  </div>
</div>

<p v-click>

**Answer:** One advantage of using a scatter plot is that it can show the relationship between two variables, making it easy to identify trends and correlations. 

</p>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is one disadvantage of using a scatter plot? 
  </div>
</div>

<p v-click>

**Answer:** A disadvantage is that it can be difficult to interpret when there are many overlapping points, especially without a trendline.

</p>

:: right ::

<img src="/images/lecture3/scatter_plot.png" alt="scatter plot" class="mx-auto w-1/2" />

<img src="/images/lecture3/scatter_plot2.png" alt="scatter plot" class="mx-auto w-1/2" />

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Line graphs

:: left ::

- Some people consider trendlines on scatter plots to be a type of line graph.
- Line graphs are typically used to show ==changes over time== or the relationship between two continuous variables.
- Points are connected by lines to show the trend or pattern in the data.

:: right ::
<img src="/images/lecture3/line_graph.png" alt="line graph" class="mx-auto w-5/6" />

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    When does it make sense to connect the points on a graph with lines?
  </div>
</div>

<p v-click>

**Answer:** In psychology, it often makes sense to connect points with lines when the data represent measurements taken over time, such as in longitudinal studies or time-series analyses. 

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Box plots

:: left ::

- Box plots are a standardized way of displaying the distribution of data based on a five-number summary (minimum, first quartile (Q1), median, third quartile (Q3), and maximum).
- They are particularly useful for comparing distributions between several groups or categories.
- Box plots can reveal outliers, which are data points that fall far outside the typical range.
- They provide a visual summary of the central tendency, variability, and skewness of the data.

==Note: We will discuss some of these concepts (like median) in more detail later.==


:: right ::

<img src="/images/lecture3/boxplot.png" alt="box plot" class="mx-auto w-5/6" />

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is one advantage of using a box plot? 
  </div>
</div>

<p v-click>

**Answer:** One advantage of using a box plot is that it provides a clear summary of the distribution of the data, including the median and quartiles. 

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Other visualizations

:: content ::

- There are other ways to visualize data, including:
  - Violin plots
  - Pie charts
  - Heatmaps
  - And many more!


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Principles of effective data visualization

:: content ::

- Choose the right type of graph for your data and the message you want to convey.
- Keep it simple and avoid unnecessary elements that can distract from the main message.

<img src="/images/lecture3/keepitsimple.jpeg" alt="keep it simple" class="mx-auto w-1/2" />


==Graphs can be very misleading! Your goal is to present the data honestly and clearly.== 


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Principles of effective data visualization (continued)

:: content ::

- Use clear labels, titles, and legends to help the audience understand the graph.
- When possible, display the full distribution of data rather than just summary statistics.
  - This is increasingly become a requirement at many journals.

<img src="/images/lecture3/line_graph_individual_points.png" alt="indiv points" class="mx-auto w-1/2" />

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Keep it simple!

:: content ::

<img src="/images/lecture3/chartjunk1.png" alt="chart junk 1" class="mx-auto w-1/2" />

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is wrong with this graph?
  </div>
</div>

<p v-click>

**Answer:** The graph is overly complicated and includes unnecessary elements (chart junk) that distract from the main message.
As one example: There is no reason for the bars to be different colors.

</p>  

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Keep it simple!

:: content ::

<img src="/images/lecture3/chartjunk2.jpg" alt="chart junk 2" class="mx-auto w-1/3" />

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is wrong with this graph?
  </div>
</div>  

<p v-click>

**Answer:** Almost everything. The 3D effect distorts the data and the visuals are distracting.

</p>  

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Keep it simple!

:: content ::

<img src="/images/lecture3/chartjunk3.png" alt="chart junk 3" class="mx-auto w-1/2" />

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is wrong with this graph?
  </div>
</div>  

<p v-click>

**Answer:** The visuals are distracting, the grid lines are unnecessary, there is no y-axis label, it is unclear how the image size relates to the data.

</p> 

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Practice: Choosing the right graph

:: left ::

*For each of the following scenarios, decide which type of graph would be most appropriate (bar graph, scatter plot, or line graph) and explain your choice.*

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  Visualizing the relation between hours studied and exam scores for a group of students. 
  </div>
</div>


<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  Visualizing the average monthly temperatures over a year in a specific city.
  </div>
</div>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  Visualizing the number of students in different majors at a university.
  </div>
</div>

:: right ::

<br>
<br>
<br>
<br>

<p v-click>

**Answer:**
Scatter plot - because both variables (hours studied and exam scores) are continuous, and we want to see the relationship between them.

</p> 

<br>

<p v-click>

**Answer:**
Line graph - because we are looking at changes over time (monthly temperatures).

</p> 

<br>

<p v-click>

**Answer:**
Bar graph - because we are comparing counts across different categories (majors).

</p> 




---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Axes matter!


:: content ::

## Axes can be extremely misleading.
- The choice of scale and range on the axes can dramatically affect how data are perceived.
- Always check the axes to ensure they accurately represent the data.

<br>

**Good website for examples:**

https://callingbullshit.org/tools/tools_misleading_axes.html




---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Axes matter: Examples


:: content ::


- Here are some examples of how axes can be manipulated to mislead viewers:

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What is misleading about each of these graphs?
  </div>
</div>

<br>

<img src="/images/lecture3/misleading_axes.png" alt="misleading axes" class="mx-auto w-1/3" />

<p v-click>

**Answer:** The y-axis covers a very large range, making differences appear non-existent.

</p>

<p v-click>

==Note: This is part of why we need statistical tests to determine if differences are "real" or not.==

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Axes matter: Examples (continued)


:: left ::

<img src="/images/lecture3/misleadingaxes2.png" alt="misleading axes2" class="mx-auto w-3/4" />

<p v-click>

**Answer:** The x-axis changes the scale, making the top 1% look more like the top 20%.

</p>

:: right ::

<img src="/images/lecture3/nothing_on_the_axis.jpg" alt="misleading axes3" class="mx-auto w-3/4" />

<p v-click>

**Answer:** The y axis is completely meaningless.

</p>

---
layout: cover
color: indigo-light
---


# That's all for data visualization!

We will continually revisit data visualization throughout the course.

---
layout: top-title
color: indigo-light
align: lt
---


# Getting set up with R Markdown for Homework 1

(Demo)


---
