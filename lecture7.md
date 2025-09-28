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
## Spring 2025 · Section C1
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
5. That means about 40% of the class scored lower than you.

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
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Hypotheses

:: content ::
- **Null hypothesis ($H_0$):** There is no real difference. The populations from which samples are drawn are the same / equal. Any observed difference is due to chance.

==The goal of hypothesis testing is to determine how likely our sample data would be if the null hypothesis were true.==

**We do statistics to either: reject or fail to reject the null hypothesis.**

We do not "prove" that the null hypothesis is true. We can only fail to reject it if we don't have enough evidence against it.

*Absence of evidence is not evidence of absence. There could still be a difference that we just didn't detect.*

<p v-click>

- **Research hypothesis or alternative hypothesis ($H_1$):** What the researcher expects to find. Sometimes states the direction of the effect (e.g., group A will have a higher mean than group B).

*The research hypothesis is the hypothesis that would be true if the null hypothesis is false.*

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing

:: content ::
- We use statistics to formally test hypotheses.
- Statistical analyses are based on certain assumptions about the dataset.
- ==Statistical assumptions== describe the ideal conditions for hypothesis testing. (More on this later!)
- We want to ensure these assumptions are (mostly) met so that we can make accurate inferences.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Six Steps of Hypothesis Testing

:: content ::
1. Identify the populations, comparison distribution, and assumptions  
- What populations are represented by the sample(s)?  
- What is the comparison distribution? Is it a distribution of means? Raw scores?
- What assumptions, if any, do our data meet? (More on this later!)
  - This helps us choose the right statistical test!

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Six Steps of Hypothesis Testing (Continued)

:: content ::

2. State null and research hypotheses  
- Your hypotheses should be about the **population(s)**, not the **sample(s)**. Remember, we want to make inferences about populations! 

<p v-click>

3. Determine characteristics of **comparison distribution.**  
- The comparison distribution = the distribution based on the null hypothesis.
- For *z* tests, we determine the mean and standard error of the comparison distribution and use this to calculate our test statistic.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Six Steps of Hypothesis Testing (Continued)

:: content ::

4. Determine ==critical values==, or cutoffs  
- The critical value defines the boundaries of the "extreme" scores. They determine how extreme the data must be (e.g., how large the *z* statistic must be) to reject the null hypothesis.
- The standard in psychological research is typically .05 or 5%. 
- For a "two-tailed" test, this means we reject the null hypothesis if the test statistic falls in the upper or lower 2.5% of our distribution.

<img src="/images/lecture7/z_critical.png" alt="Critical Regions" class="w-3/4 mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Six Steps of Hypothesis Testing (Continued)

:: content ::

4. Determine ==critical values==, or cutoffs  
- The critical region is the area in the tails of the distribution beyond the critical values. Values that fall in the critical region are considered extreme enough to reject the null hypothesis.
- The probabilities used to determine the critical values in hypothesis testing are called alpha levels.


<img src="/images/lecture7/z_critical.png" alt="Critical Regions" class="w-3/4 mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Six Steps of Hypothesis Testing (Continued)

:: content ::

5. Calculate test statistic
- All the information from the previous steps is used to calculate the test statistic.
- We will focus on the *z* statistic for now, but these same steps apply for other test statistics (to be discussed later in the course!)
- Once we have our test statistic, we can compare it to the critical values from step 4 to determine whether the sample data is extreme enough to reject the null hypothesis.  

<img src="/images/lecture7/p_val.png" alt="z stat and p" class="w-2/5 mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Six Steps of Hypothesis Testing (Continued)

:: content ::

6. Determine whether you can reject the null hypothesis.
- Reject if: The test statistic is beyond the cutoff
- Fail to reject if: The test statistic is not beyond the cutoff
- This usually involves comparing *p* values (obtained probabilities) to *alpha* values (predetermined cutoffs).
- If we reject the null hypothesis, we say our results are ==statistically significant.==

**Statistically significant**: Data are more extreme than what we would expect by chance if there truly were no actual difference.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# P values

:: content ::
- The *p* value is the probability of obtaining the observed results if the null hypothesis is true.
- A smaller *p* value indicates stronger evidence against the null hypothesis.

<img src="/images/lecture7/p_val_meme.jpg" alt="P value meme" class="w-1/3 mx-auto"/>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Example: Santa’s Cookies

:: left ::
- Santa Claus claims that the average bag of gingerbread cookies weighs 500g, and the standard deviation across cookie bags is 30g.

<img src="/images/lecture7/santa_cookies.png" alt="Santa Cookies" class="w-3/4 mx-auto"/>

:: right ::

*You are not sure whether what Santa is saying is true. You decide to test a hypothesis that the average weight of one bag of cookies is LESS than 500g.* 

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What are your null and research hypotheses?
  </div>
</div>

<p v-click>

**Answer:** 

$H_0$: Average weight of one bag of cookies = 500g.

$H_1$: Average weight of one bag of cookies < 500g.

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Example: Santa’s Cookies (Continued)

:: left ::
- You can’t test every single bag of cookies, so you weigh a sample of Santa's bags.
- You collect 25 bags of cookies.
- The mean weight of the 25 bags is 485 g.

<img src="/images/lecture7/santa_cookies2.png" alt="Santa Cookies2" class="w-3/4 mx-auto"/>

:: right ::


<p v-click>

- If the null hypothesis is true, your sampling distribution should look like this:

<img src="/images/lecture7/sample_dist.png" alt="Santa Cookies 3" class="w-7/8 mx-auto"/>
</p>

<p v-click>

- But your sample mean is only 485 g, 15 g below the mean expected value.

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Example: Santa’s Cookies (Continued)

:: left ::
- Is this difference extreme enough to reject the null hypothesis, assuming an alpha level of .05?
- Remember, Santa's claim is that cookie bags have a mean weight of 500g, and the SD across cookie bags is 30g. Your sample size is 25 bags.

<img src="/images/lecture7/santa_cookies4.png" alt="Santa Cookies 4" class="w-1/2 mx-auto"/>

<br>

<div class="mt-0 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    Use what you have learned today to come up with an answer!
  </div>
</div>

:: right ::

<img src="/images/lecture7/z_table_2.gif" alt="z table" class="w-3/4 mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Santa's Cookies: The Solution

:: content ::
- We can use the *z* statistic to address this question.
- First, we can use *z* scores to standardize our data. If the mean of our sample data equals the population mean (our null hypothesis), then our *z* score will be 0.
- Computing the *z* score:

1. Compute difference in means: $485 - 500 = -15$
2. Compute standard error: $30 / \sqrt(25) = 6$
3. Compute *z* score for sample mean: $-15 / 6 = -2.5$.

<p v-click>

- Next, we want to determine ==how extreme== this *z* score is.
- We can use our *z* table to look up the percentile, which is $1 - .9938 = .0062.$

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Santa's Cookies: The Solution (Continued)

:: content ::

- This means the probability of getting a value as extreme as ours is **.0062.** This is our *p value*. 


<img src="/images/lecture7/cookies_answer.png" alt="Cookies 5" class="w-1/3 mx-auto"/>

- Assuming we had set our alpha level at .05, then we would reject the null hypothesis, because there is < 5% chance that we would observe this pattern of data if the null were true.

<p v-click>
<div class="mt-0 w-full flex justify-center">
  <div class="bg-red-100 border-2 border-red-300 rounded-lg shadow-md p-1 transform">
    Be careful when moving back and forth between decimals and percents!

    .05 = 5%
    .0062 = .62%
  </div>
</div>

</p>



---
layout: cover
color: indigo-light
---

# That’s all for today!
Next time: more on **t tests**