---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 12
exportFilename: ps211_fall2025_lecture12
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1  
### Lecture 12: Independent-Sample *t* Tests (Continued), *t* Tests in R

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates & Reminders

:: content ::
- Class time today was the ==mid-semester survey== deadline.
   - You met the threshold! +2 bonus percentage points on Exam 3.
- ==Homework 3== is due Friday at midnight.
- By the end of class today, you will know everything you need to complete it!

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Recap: Types of *t* Tests

:: content ::
There are 3 types of *t* tests, used in different research scenarios:

1. **Single-sample *t* test** – Compare a sample mean to a population mean when the population SD is unknown.  

2. **Paired-sample *t* test** – Compare two samples when every participant is in both samples (within-subjects design).  

3. **Independent-samples *t* test** – Compare two samples when participants are in only one group (between-subjects design).


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Which Test Should I Use?

:: content ::

### Research question: Are the means of my sample(s) different from each other or from a known population mean?

- **Single-sample, comparing scores to population with known mean and known SD** → use a *z test*
- **Single-sample, comparing scores to population with known mean and unknown SD** → use a *single-sample t test*
- **Within-groups design** → use a *paired-samples t test*  
- **Between-groups design** → use an *independent-samples t test*

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Review: Independent-Samples *t* Tests

:: content ::
- Compares two means from **independent groups.**  
- Each group has different people that each experience **only one** level of the independent variable.  
- Example: Comparing quiz scores of students who took the quiz with music vs. students who took the quiz in silence.  
  - The scores are independent because no student is in both groups. There are no paired scores.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Paired- vs. Independent-Samples *t* Tests

:: left ::
### Paired-Samples *t* Test
1. Compute difference scores for each participant.
2. Compute mean of these difference scores.
3. Determine probability of observing this mean difference under null hypothesis

<p v-click> 

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-2 transform">
Here, our null distribution is a distribution of mean differences.
</div>
</div>

</p>

:: right ::
### Independent-Samples *t* Test
1. Compute mean scores for each group.
2. Compute difference between these group means.
3. Determine probability of observing this mean difference under null hypothesis.

<p v-click> 

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-2 transform">
Here, our null distribution is a distribution of differences between independent group means.
</div>
</div>

<br> 
<img src="/images/lecture10/fried_brain.png"  class="w-1/3 mx-auto"/>


</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Paired- vs. Independent-Samples *t* Tests

:: left ::
### Paired-Samples *t* Test
<p v-click>
<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-2 transform">
Here, our null distribution is a distribution of mean differences.
</div>
</div>

- The mean of this null distribution is 0.
- Although we have two sets of scores, we focus on the **difference scores** between paired observations.
- That means we are really working with **one** sample of difference scores.
- The standard error of this distribution is determined by this **single** sample's SD and number of scores.

</p>

:: right ::
### Independent-Samples *t* Test
<p v-click>
<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-2 transform">
Here, our null distribution is a distribution of differences between independent group means.
</div>
</div>

- The mean of this null distribution is still 0!
- We focus on the **means** of the two independent groups.
- That means we are really working with **two** independent samples.
- The standard error of this distribution is determined by **both** samples' SDs and sample sizes.



</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# How do we create the distribution of differences between independent group means?

:: left ::
1. Randomly sample n₁ participants for Group 1 and n₂ participants for Group 2 from the population.  
2. Compute the mean for each group.  
3. Compute the difference between the two group means (M₁ − M₂).  
4. Repeat many times to build a distribution of mean differences between independent groups.
5. Use this distribution to determine the probability of observing a mean difference as extreme as the one in our sample, assuming the null hypothesis is true.


:: right ::
<img src="/images/lecture10/independent_mean_diff_hist_n20_25.png"  class="mx-auto"/>


<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-1 transform">

Note that here we have **two** ns (n₁ and n₂) because the two groups can have different sample sizes.
</div>
</div>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# What are the characteristics of the distribution of differences between independent group means?

:: content ::
Remember, **normally we do not have to build this distribution by simulating many samples.** Instead, we can compute its characteristics directly.  
- Under H₀, the mean of this distribution is 0.  
- The standard error (SE) of this distribution is computed using both groups' sample standard deviations and sample sizes.
- We use both groups' data to estimate the *pooled variance*, which is our best estimate of the population variance.
- From the pooled variance, we can compute the standard error of the difference between independent means.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Steps of an Independent-Samples *t* Test

:: left ::

1. Identify populations, distribution, & assumptions.  
2. State null and research hypotheses.  
3. Determine characteristics of comparison distribution.  
4. Determine critical values (cutoffs).  
5. Calculate test statistic.  
6. Make a decision.

:: right ::

<p v-click>

*Steps 3-5 are similar to those for paired-samples *t* tests, but the formulas differ slightly because we are dealing with two independent groups.*

<span class="text-blue-600">

3. Determine characteristics of comparison distribution.  
4. Determine critical values (cutoffs).  
5. Calculate test statistic.  

</span>

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

## Five steps to compute the standard error:
1. Compute each sample's variance (s²).  
2. Compute the pooled variance (s²pooled).
3. Convert the pooled variance from the squared standard deviation (SD²) to the squared standard error (SE²).  
4. Add the two squared standard errors together to get the variance of the difference between means (SE²difference).
5. Take the square root of the variance of the difference to get the standard error of the difference between means (SEdifference).


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

### Step 1: calculate the variance for each sample:  
$$s^2_1 = \frac{\sum_{i=1}^{n_1} (X_{1i} - M_1)^2}{n_1 - 1}$$
$$s^2_2 = \frac{\sum_{i=1}^{n_2} (X_{2i} - M_2)^2}{n_2 - 1}$$

<p v-click>

***Why do we divide by (n − 1) instead of n?***

A. To correct for bias in estimating the population variance from a sample.

B. To account for the fact that we are working with two samples.

C. To account for different numbers of participants in each group.

D. There is no particular reason; it's just a convention.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

### Step 2: Compute the pooled variance:
- We have to weight our estimates because the sample sizes are different.
- To do this, we compute the degrees of freedom (df) for each sample:  
  - df₁ = n₁ − 1  
  - df₂ = n₂ − 1
- Then, we compute the pooled variance as a weighted average of the two sample variances:

$$s^2_{pooled} = \frac{df₁}{df_{total}}s^2_1 + \frac{df₂}{df_{total}}s^2_2$$


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

### Step 2: Compute the pooled variance:

$$s^2_{pooled} = \frac{df₁}{df_{total}}s^2_1 + \frac{df₂}{df_{total}}s^2_2$$

<p v-click>

***If our first sample has 10 participants and our second sample has 15 participants, which variance will have more weight in the pooled variance calculation?***

A. They will have equal weight.

B. The variance from the first sample (n₁ = 10).

C. The variance from the second sample (n₂ = 15).

D. We cannot tell without knowing the variances.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

### Step 3: Convert the pooled variance from the squared standard deviation (SD²) to the squared standard error (SE²).

- We now have our best estimate of the population variance (s²pooled).
- Remember, variance = $s²$.
- Remember, $SE=\frac{s}{\sqrt{n}}$.
- That means that $SE² = \frac{s²}{n}$.
- So, for each sample, we convert the pooled variance to the squared standard error by dividing by the respective sample size.

$$SE^2_{pooled} = \frac{s^2_{pooled}}{n}$$

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

### Step 4: Add the squared standard errors (SE²) together.
- We ultimately want the standard error of the *difference* between means.
- The squared standard error of the difference between means is the sum of the two squared standard errors.
  - This is a mathematical property of variances that is beyond the scope of this course.

$$SE^2_{difference} = SE^2_1 + SE^2_2$$

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

### Step 5: Take the square root of the variance of the difference to get the standard error of the difference between means (SEdifference).
- Now that we have the squared standard error of the difference between means, we can take the square root to get the standard error.

$$SE_{difference} = \sqrt{SE^2_1 + SE^2_2}$$


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How do we compute the standard error for an independent-samples *t* test?

:: content ::

### Putting it all together:
1. Compute each sample's variance (s²).  
2. Compute the pooled variance (s²pooled).
3. Convert the pooled variance from the squared standard deviation (SD²) to the squared standard error (SE²).  
4. Add the two squared standard errors together to get the variance of the difference between means (SE²difference).
5. Take the square root of the variance of the difference to get the standard error of the difference between means (SEdifference).

$$
SE_{difference} =
\sqrt{
\frac{(n_1 - 1)s_1^2 + (n_2 - 1)s_2^2}
{(n_1 + n_2 - 2)}
\left(
\frac{1}{n_1} + \frac{1}{n_2}
\right)
}$$



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Are you kidding me?

:: content ::

$$
SE_{difference} =
\sqrt{
\frac{(n_1 - 1)s_1^2 + (n_2 - 1)s_2^2}
{(n_1 + n_2 - 2)}
\left(
\frac{1}{n_1} + \frac{1}{n_2}
\right)
}$$

Here is the good news:
- In practice, you will almost never have to compute this by hand.
- It's important to understand the steps so that you understand *where* this formula comes from.
- But in practice, you will use statistical software (e.g., R) to compute independent-samples *t* tests for you.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Let's test our intuitions

:: content ::

*If we increase the sample sizes (n₁ and n₂) while keeping the sample variances (s₁² and s₂²) constant, what happens to the standard error of the difference between means (SEdifference)?*

A. It increases.

B. It decreases.

C. It stays the same.

D. We cannot tell without knowing the sample sizes.

<p v-click>

**Answer:** B. It decreases.

</p>

<p v-click>

*Why is this the case?*

</p>

<p v-click>

**Answer:** As sample sizes increase, our estimates of the population parameters become more precise, leading to a smaller standard error.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# What are the characteristics of the distribution of differences between independent group means?

:: content ::

- Under H₀, the mean of this distribution is 0.
- We now know how to compute the standard error (SE) of this distribution using both groups' sample standard deviations and sample sizes.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Step 4: Determine Critical Values (Cutoffs)

:: content ::

- We now need to determine where the middle 95% of this comparison distribution lies (since we are using an alpha level of .05 for a two-tailed test).
- We are using a *t* distribution to account for our additional uncertainty due to estimating the population standard deviations from our samples.
- We can find out critical values from a t-table or computer program.
- Here our degrees of freedom (df) is computed as:  
  - df = (n₁ − 1) + (n₂ − 1) = n₁ + n₂ − 2

- This is because we are estimating the population standard deviation twice (once for each sample).

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Step 5: Compute the Test Statistic

:: content ::

- We now need to compute the test statistic (*t*), by subtracting the hypothesized population mean difference (0 under H₀) from the observed mean difference between our two samples, and dividing by the standard error of the difference between means.

$$t = \frac{M_D-\mu_D}{SE}$$

- Here:
  - $M_D$ = observed mean difference between the two samples  
  - $\mu_D$ = hypothesized population mean difference (0 under H₀)  
  - $SE$ = standard error of the difference between means

- This simplifies to:

$$t = \frac{M_1 - M_2}{SE_{difference}}$$


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Step 6: Make a Decision

:: content ::

- We use exactly the same decision rule as before:
  - If the calculated *t* value falls in the critical region (beyond the critical values), we reject H₀.
  - If the calculated *t* value does not fall in the critical region, we fail to reject H₀.

<img src="/images/lecture11/phew.gif"  class="w-1/3 mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Confidence Intervals for Independent-Samples *t* Tests

:: content ::

- We use exactly the same calculation as before:


$$CI = (M_1 - M_2) \pm (t_{crit} \times SE_{difference})$$


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Effect Sizes for Independent-Samples *t* Tests

:: content ::

- We use exactly the same calculation as before:


$$d = \frac{(M_1 - M_2)}{s}$$

Where s is the pooled standard deviation:
$$s = \sqrt{s^2_{pooled}}$$

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Conducting *t* tests in R

:: content ::

- To conduct an *t* test in R, you can use the `t.test()` function.
- Here’s a basic example:

```r
# Sample data
group1 <- c(5, 6, 7, 8, 9)
group2 <- c(10, 11, 12, 13, 14)

# Conducting the t-test
t.test(group1, group2, var.equal = TRUE, paired = FALSE)
```

- This will give you the t-statistic, degrees of freedom, and p-value for the test.
- Let's open R and see what this looks like.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Worksheet time!

:: content ::

- The shared worksheet walks you through the steps of an independent-samples *t* test.  
- Work through it with a partner or small group.
- We will go over the solution together on Thursday.


---
layout: cover
color: indigo-light
---

# That’s all for today!
