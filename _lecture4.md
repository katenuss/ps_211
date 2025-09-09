---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 4
exportFilename: ps211_fall2025_lecture4
---

# PS 211: Introduction to Experimental Design
## Spring 2025 · Section C1
### Lecture 4: Central Tendency & Variability

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and reminders

:: content ::

- ==Homework 1== is due (via Blackboard) on Monday, September 15 at 11:59 PM.
    - Homework 1 mostly covers material from Lectures 1 - 3, with a small amount of material from today's lecture.
    - Please check **today** to make sure you know how to use R Markdown and that you can successfully knit your homework to an html file.
    - Late homework will be penalized 3 points per day.
    - We may not be available to help you resolve last-minute technical issues.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and reminders (continued)

:: content ::

- Exam 1 is scheduled for Tuesday, September 23 during our regular class time.
    - Exam 1 will cover material from Lectures 1 - 4.
    - After today's lecture, I will post a review sheet on Slack that has all the topics that will be covered on the exam.
    - The exam will be closed book/notes, but you may print the provided review sheet (and write on it with your own notes) or you may bring one 8.5" x 11" sheet of paper with handwritten notes (both sides).
    - You will be able to complete the exam without a calculator, but you may bring a calculator if you want.
- We will have a review session for Exam 1 on Thursday, September 18 during our regular class time. Please bring your questions!


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Central Tendency

:: content ::

- The central tendency describes the “center” of a dataset.  
- It identifies the value that scores cluster around.  
- The three common measures of central tendency are mean, median, and mode.  

==These are descriptive statistics.==

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Mean, median, and mode

:: content ::

**Mean:** The arithmetic average

**Median:** The middle score

**Mode:** The most common score

*We will go over all of these in detail in the next few slides.*

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    If a distribution is positively skewed, which measure of central tendency will be the largest? Which will be the smallest?
  </div>
</div>

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Mean, median, and mode

:: content ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    If a distribution is positively skewed, which measure of central tendency will be the largest? Which will be the smallest?
  </div>
</div>


<p v-click>

**Answer:** The mean will be the largest, and the mode will be the smallest.

<img src="/images/lecture4/mean_med_mode.png" alt="mean med mode" class="mx-auto w-3/4" />

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Mean: The Arithmetic Average

:: content ::

<div class="mt-.5 w-full flex justify-center">
  <div class="bg-red-100 border-2 border-red-300 rounded-lg shadow-md p-2 transform">
    Warning: Equation incoming!
  </div>
</div>

<p v-click>

The formula for the mean is:
$$M = \frac{\sum_{i=1}^{N} X_i}{N}$$

</p>

<p v-click>

==Let's break this down:==

</p>

<p v-click>

$M$ = the mean. This is what we are trying to calculate.

</p>

<p v-click>

$\sum$ = the summation symbol. This means "add up all the following values."

</p>

<p v-click>

$\sum_{i=1}^{N}$ = this tells us to start with the first score (i=1) and continue adding scores until we reach the Nth score (the last score).

</p>

<p v-click>

$X_i$ = the value of the ith score.

</p>

<p v-click>

$N$ = the total number of scores.

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Calculating the mean
$$M = \frac{\sum_{i=1}^{N} X_i}{N}$$

:: left ::

1. Add up all the scores.
2. Count the total number of scores.
3. Divide the sum of the scores by the total number of scores.

:: right ::


<img src="/images/lecture4/mean.png" alt="mean" class="mx-auto w-1/2" />

==Some people like to think of a fulcrum balancing the two sides of a distribution.==

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# The mean: Practice
$$M = \frac{\sum_{i=1}^{N} X_i}{N}$$

:: left ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Five students take an exam and receive the following scores: 80, 85, 90, 95, 100. What is the mean exam score?
  </div>
</div>

<p v-click>


**Answer:** 90. 80 + 85 + 90 + 95 + 100 = 450. There are 5 scores, so 450 / 5 = 90.

</p>


:: right ::

<p v-click>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    A sixth student takes the exam and receives a score of 0. Is the mean exam score now 45?
  </div>
</div>

</p>

<p v-click>

**Answer:** No. The new mean is 75. (80 + 85 + 90 + 95 + 100 + 0 = 450; 450 / 6 = 75.)

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The mean: Symbols
:: content ::

- The mean of a sample is a **statistic**.
- The mean of a population is an estimated **parameter**.
- Typically:
    - Symbols are *italicized*. Numbers are not.
    - Latin letters are used for statistics (numbers calculated from samples).
    - Greek letters are used for parameters (numbers estimated for populations).
- The mean of a sample is denoted by $M$ or $\bar{X}$ (X-bar).
- The mean of a population is denoted by $\mu$ (the Greek letter "mu").

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# The mean: Symbols

:: left ::

<img src="/images/lecture4/m.jpeg" alt="m" class="mx-auto w-1/2" />

==Sample Mean== (but capitalize it!)
- Can be calculated directly. 

:: right::

<img src="/images/lecture4/mew.png" alt="mew" class="mx-auto w-1/2" />

==Population Mean==
- Usually estimated.


---
layout: top-title
color: indigo-light
---

:: title ::
# The Median

:: content ::
- The median is the middle score when all scores are ordered from lowest to highest (ascending).
- If there is an odd number of scores, the median is the middle score.
- If there is an even number of scores, the median is the mean of the two middle scores.  
- The median represents the 50th percentile of the data.  


---
layout: top-title
color: indigo-light
---

:: title ::
# The Median

:: content ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Five students take an exam and receive the following scores: 92, 85, 90, 95, 100. What is the median exam score?
  </div>
</div>

<p v-click>

**Answer:** 92. First, we order the scores: 85, 90, 92, 95, 100. The middle score is 92.

</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    A sixth student takes the exam and receives a score of 0. What is the median exam score now?
  </div>
</div>

</p>

<p v-click>

**Answer:** 91. The ordered scores are now: 0, 85, 90, 92, 95, 100. The two middle scores are 90 and 92, and their mean is 91.

</p>


---
layout: top-title
color: indigo-light
---

:: title ::
# The Mode

:: content ::
- The mode is the most common score in the dataset.  
- A distribution may be unimodal (one mode), bimodal (two modes), or multimodal (many modes).  
- The mode is not always useful if many values occur with the same frequency.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Comparing Mean, Median, and Mode

:: content ::
- In a normal distribution, the mean, median, and mode are equal.  
- In a negatively skewed distribution, the mean is less than the median, which is less than the mode.  
- In a positively skewed distribution, the mode is less than the median, which is less than the mean.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Outliers

:: content ::
- Outliers are extreme values that differ greatly from the rest of the data.  
- Outliers can distort the mean, making it less representative of the dataset.  
- The median is less affected by outliers and can be a better measure of central tendency in skewed data.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Parametric vs. Non-Parametric Statistics

:: content ::
- Parametric tests are powerful but assume normality, equal variance, independence, and no extreme outliers.  
- Non-parametric tests do not require these assumptions and are often used with ordinal data.  
- Non-parametric tests are less powerful but still useful when assumptions are not met.  

---
layout: cover
color: indigo-light
---

# End of Lecture 4b



---
layout: cover
color: indigo-light
theme: neversink
---

# PS 211: Introduction to Experimental Design
## Spring 2025 · Section C1
### Lecture 4: Variability

---
layout: top-title
color: indigo-light
---

:: title ::
# Variability

:: content ::
- Variability describes how spread out the scores in a distribution are.  
- The three common measures are range, variance, and standard deviation.  
- Distributions with higher variability show greater spread between scores.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Range

:: content ::
- The range is the difference between the highest and lowest score.  
- For example, if the highest quiz score is 90 and the lowest is 70, the range is 20.  
- The range is simple to compute, but it only depends on two scores and can be distorted by outliers.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Interquartile Range

:: content ::
- The interquartile range (IQR) measures the distance between the 25th percentile (Q1) and 75th percentile (Q3).  
- The IQR represents the middle 50% of the data.  
- Because it is less influenced by outliers, the IQR is often a more robust measure of variability.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Variance

:: content ::
- Variance is the average of the squared deviations from the mean.  
- Squaring the deviations prevents them from canceling out.  
- A larger variance means scores are more spread out.  
- Variance is expressed in squared units, which can be harder to interpret directly.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Standard Deviation

:: content ::
- The standard deviation is the square root of the variance.  
- It represents the typical amount that each score deviates from the mean.  
- Larger standard deviations indicate greater spread, while smaller ones indicate that scores cluster more closely around the mean.  

---
layout: top-title
color: indigo-light
---

:: title ::
# Variability in SPSS

:: content ::
- In SPSS, descriptive statistics can be used to compute range, variance, and standard deviation.  
- These values appear in the output window and provide a quick summary of variability in your dataset.  

---
layout: cover
color: indigo-light
---

# End of Lecture 4a

---

