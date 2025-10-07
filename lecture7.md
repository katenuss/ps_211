---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 7
exportFilename: ps211_fall2025_lecture7
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1
### Lecture 7: Hypothesis Testing with Z Tests

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and Reminders

:: content ::
- ==Exam 1== grades will be posted by the end of the day.
- People did well!
- If you would like to go over your exam, please come to office hours next week.
- My office hours tomorrow (Wednesday) are canceled due to conference travel.
- The next exam is somewhat soon, on **Thursday, October 16**.
- ==Homework 2== will be posted by the end of the week and is due on **Friday, October 10**.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Standard Normal Distribution Tables

:: content ::

## How can we convert z scores to percentiles?

- Recall, in a normal distribution:
  - z = 0 is the mean (50th percentile)  
  - z = 1 is 1 standard deviation above the mean (~84th percentile)
  - z = -1 is 1 standard deviation below the mean (~16th percentile)
- What if a z score isn’t a whole number?  
- We can use a computer program to find the percentile (like we just did!), or:
  - We use a **standard normal table** to find the percentile.  

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Using the Standard Normal (Z) Table

:: left ::

- Z scores are one way to locate a point in the normal curve.  
- A standard normal distribution (or z) table shows the percentile associated with each z score.
- Usually only positive z values are shown.  
- Negative z values are mirror images (the curve is symmetric).
  - Can compute by subtracting percentile from 1.

:: right ::

<img src="/images/lecture7/z_table.png" alt="Z Table" class="w-7/8 mx-auto"/> 



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Looking Up a Z Score with the Standard Normal Table

:: left ::

## Steps:  

1. Convert raw score to z score.

<div class="mt-1 w-full flex justify-center">
  <div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-4 transform">
    Remember how to do this?
  </div>
</div>

<br> 

2. Use the *row* for the first two digits 
    and the *column* for the second decimal place.
3. Use the *sign* to determine if you need to subtract from 1.
4. Multiply by 100 to get the percentile.


:: right ::

<img src="/images/lecture7/z_table.png" alt="Z Table" class="w-7/8 mx-auto"/> 


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
#  Z Table Practice:

:: left ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What percentile is z = 0.67? 
    BEFORE looking at the table, ask yourself: Should this be above or below 50%?
  </div>
</div>


<p v-click>

1. Find row 0.6 and column 0.07 → 0.7486  
2. z is positive, so percentile = 0.7486 = **74.86%**  
</p>

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What percentile is z = -.4? 
  </div>
</div>


<p v-click>

1. Find row 0.4 and column 0.0 -> .6554 
2. z is negative, so percentile = 1 - .6554 = .3446 = **34.46%** 
</p>


:: right ::

<img src="/images/lecture7/z_table.png" alt="Z Table" class="w-7/8 mx-auto"/> 


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
#  Z Table Practice (More!):

:: left ::

You want to know how well you did on Exam 1 relative to your classmates. You scored a 28 out of 30. The class mean was 27 with a standard deviation of 4. 

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    Approximately what proportion of the class scored lower than you?
  </div>
</div>


<p v-click>

1. Compute z: $z = (28 - 27)/4 = 0.25$  
2. Find row 0.2 and column 0.05 → 0.5987  
3. z is positive, so percentile = 0.5987 = **59.87%**.
4. You did better than about 60% of the class.
5. That means about 60% of the class scored lower than you.

</p>


:: right ::

<img src="/images/lecture7/z_table.png" alt="Z Table" class="w-7/8 mx-auto"/> 

<p v-click>
You can also use R to find percentiles!


```r
# Find percentile for z = 0.25
pnorm(0.25)
# [1] 0.5987063
```
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# From Z Scores to Hypothesis Testing

:: content ::
- Hypothesis tests ask: ==**How extreme is a score?**==  
- When we start testing hypotheses, we want to know if a score is extreme enough to be considered unusual.
- We can use *z* scores to determine this.
- We will more precisely define what we mean by "extreme" and "unusual" soon.


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
#  Building an intuition about "extreme" scores

:: left ::

You suspect your classmate may have cheated on Exam 1 because they got a perfect score of 33. The class mean was 27 with a standard deviation of 4.

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    How "extreme" is a score of 33?
  </div>
</div>


<p v-click>

1. Compute z: $z = (33 - 27)/4 = 1.5$  
2. Find percentile: row 1.5, column 0.00 → 0.9332 = **93.32%**.
3. 93.32% of scores are below z = 1.5  
4. 6.68% of scores are above z = 1.5 (100 - 93.32 = 6.68)  
5. A score of 33 is not super extreme.

</p>


:: right ::

<img src="/images/lecture7/z_table_2.gif" alt="Z Table 2" class="w-3/4 mx-auto"/> 




---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
#  Building an intuition about "extreme" scores

:: left ::

You suspect your classmate may have cheated on Exam 1 because they got a perfect score of 33. The class mean was 27.

<p v-click>

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    What if the standard deviation were smaller, say 1?
  </div>
</div>

</p>


<p v-click>

1. Compute z: $z = (33 - 27)/1 = 6$.
2. Find percentile: row 6.0, column 0.00 → 0.9999997 = **99.99997%**. (**Off the table!**)
3. 99.99997% of scores are below z = 6.
4. A score of 33 is *extremely* extreme.
5. We'll come back to this idea later!

</p>


:: right ::

<img src="/images/lecture7/z_table_2.gif" alt="Z Table 2" class="w-3/4 mx-auto"/> 



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Z Statistics for Distribution of *Means*

:: content ::
If we want to think about the *z* statistic for a **group**, we need to change a few things:

1. We use ==means== instead of raw scores.
2. We calculate the mean and ==standard error== for the distribution of means.
3. Then we calculate a *z* statistic for the sample mean.

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-4 transform">
  When might this be useful?
</div>
</div>

</p>

<p v-click>

**Answer: All the time!**

*We often want to know if a sample is different from a population.*

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Example: Dating Profiles

:: left ::
Researchers are studying online dating profile ratings.
- They have a sample of 30 profiles from Rhode Island (RI).
- RI sample (n=30): $M = 2.84$
- U.S. population: $\mu = 2.5$, $SD = 0.833$  
- **Is the RI sample mean different from the U.S. mean?**

:: right ::
<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
  What is the standard error for the distribution of means?
</div>
</div>

<p v-click>

**Answer:** $SE = SD/\sqrt{n} = 0.833/\sqrt{30} \approx 0.152$

</p>

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
  What does this standard error tell us?
</div>
</div>

<p v-click>

**Answer:** The average sample mean computed from samples of size $n=30$ will be about 0.152 away from the population mean ($\mu$) of 2.5.

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Dating Profiles (Continued)

:: left ::
Researchers are studying online dating profile ratings.
- They have a sample of 30 profiles from Rhode Island (RI).
- RI sample (n=30): $M = 2.84$
- U.S. population: $\mu = 2.5$, $SD = 0.833$  
- **Is the RI sample mean different from the U.S. mean?**

:: right ::

<div class="w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    How would we calculate a z statistic to determine how "extreme" the RI sample mean is?
  </div>
</div>

<p v-click>

1. Calculate standard error: $SE = 0.833/\sqrt{30} \approx 0.152$
2. Calculate z statistic for the sample mean, using the population mean and standard error:

$z = (M - \mu) / SE$

$z = (2.84 - 2.5) / 0.152 \approx 2.24$

</p>


<p v-click>
The RI sample mean is more than 2 SDs above the U.S. mean.  

We need to conduct a formal hypothesis test to determine if this difference is **statistically significant**.  
</p>


---
layout: cover
color: indigo-light
---

# That’s all for today!
Next time: more on **hypothesis testing**