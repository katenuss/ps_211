---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Exam 2 Review
exportFilename: ps211_fall2025_exam2_review
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1
### Exam 2 Review Session 

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and Reminders

:: content ::
- ==Homework 2== is due Friday.
  - We are going to try to return grades quickly so you can use feedback to prepare for Exam 2.
- Please submit as a PDF. 

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and Reminders (Exam 2)

:: content ::
==Exam 2== is next Thursday.
- The exam will focus on lectures 6 - 9, but may also include some cumulative content from earlier in the course.
- The exam will consist of 31 multiple choice questions. You will only need to answer 30 questions correctly to get 100%.
- You will not need a calculator.
- You can bring one 8.5"x11" sheet of handwritten notes (front and back).
- If you need to use a z table or t table, we will provide the table.
- Please bring a pencil or dark pen.
- Having your computer or phone out during the exam will result in a 0 for the exam.
- You will have the entire class period (75 minutes) to complete the exam.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Example: Counseling Session Contracts

:: left ::
- We are studying counseling sessions attended by students at a university. We want to know if signing a contract to attend counseling improves attendance.
- We ask students to sign contracts to attend a set number of counseling sessions (10)
  - Sample: Students at this counseling center who sign the contract to attend at least 10 sessions
  - Population: All students who attended counseling sessions at this university and did not sign the contract

:: right ::
- We sample 5 students who sign a contract. They attended 6, 6, 12, 7, and 8 counseling sessions
- The university average of students who did not sign contracts is 4.6 counseling sessions attended.

<div class="mt-0 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
Did students who sign the contract attend a different number of sessions than those who did not?
</div>
</div>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

Step 1: Identify the populations, distributions, and assumptions
**Populations:** Contract sample, non-contract population

**Distributions:** Distributions of *means.* We want to know whether a sample mean is different from a population mean. Our population distribution is a *t* distribution because we do not know the population standard deviation, so we will have to estimate it from the sample. This means we will use a *t* test.

:: right ::
**Assumptions met for a *t* test?:** 
- We don't know anything about the population distribution or how the sample was collected. 
- However, we will assume that the sample was collected randomly and that the population is approximately normal. 
- If the population was not normal, we would need a larger sample size to use a *t* test. (so that the Central Limit Theorem applies)


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

Step 2: State the hypotheses

- **$H_0$: $μ_1 = μ_2$** (Students who sign the contract attend the same number of sessions as those who do not)
- **$H_1$: $μ_1 ≠ μ_2$** (Students who sign the contract attend a different number of sessions than those who do not)

:: right ::

<p v-click>

Step 3: Determine characteristics of the **comparison distribution**

- Here, we how "extreme" our sample mean is, *assuming the null hypothesis is true.*
- We have already decided that the distribution is a *t* distribution because we know the population mean but not the population standard deviation.
- So we need to compute the *t* statistic for our sample mean.

</p>



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

Step 3: Determine characteristics of the **comparison distribution** (continued)

- We know:
  $$t = \frac{M - \mu}{S_M}$$

- We have:
  - Population mean (μ) = 4.6
  - Sample size (n) = 5
  - Sample scores = 6, 6, 12, 7, 8

:: right ::

- We need to estimate:
  - Population standard error ($S_M$)

- First, we need to calculate the sample mean ($M$) and sample standard deviation ($s$):
  - Sample mean ($M$) = (6 + 6 + 12 + 7 + 8) / 5 = 7.8
  - Sample standard deviation ($s$) = 2.49
  - Estimated population standard error ($S_M$) = 2.49 / √5 = 1.11

We also need to calculate:
  - Degrees of freedom (df) = n - 1 = 5 - 1 = 4



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

<img src="/images/exam2_review/t_dist.png" class="w-3/4 mx-auto"/>

Now we have our *t* distribution for df = 4.



:: right ::


Step 4: Determine critical values or cutoffs

- We need to know how extreme our *t* statistic needs to be to reject the null hypothesis.
- Remember, *t* distributions vary based on degrees of freedom (df = n - 1). Here, df = 5 - 1 = 4.

- We will use α = 0.05 and a two-tailed test (because our alternative hypothesis is that the means are different, not specifically higher or lower).


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

Step 4: Determine critical values or cutoffs

- We will use α = 0.05. This means we will consider the most extreme 5% of the distribution to be in the rejection region.
- **If the null hypothesis is true, we would expect to get a t statistic this extreme or more extreme only 5% of the time.**
- Since this is a two-tailed test, we will split the 5% into two tails (2.5% in each tail).

<img src="/images/exam2_review/t_alpha_05.png" class="w-3/4 mx-auto"/>


:: right ::

==What if we wanted to be more conservative and use α = 0.01?==
- We would consider the most extreme 1% of the distribution to be in the rejection region.
- Since this is a two-tailed test, we would split the 1% into two tails (0.5% in each tail).

<img src="/images/exam2_review/t_alpha_01.png" class="w-3/4 mx-auto"/>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

Step 4: Determine critical values or cutoffs

- How do we convert α = 0.05 into a critical value for *t*?
- We can use a *t* table or an online calculator to find the critical value for df = 4 and α = 0.05 (two-tailed).

<img src="/images/exam2_review/t_alpha_05.png" class="w-3/4 mx-auto"/>


:: right ::

<img src="/images/exam2_review/t_table.png" class="mx-auto"/>

- The critical value is approximately ==±2.776.==


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

Step 5: Calculate the test statistic

- We can use the formula for the *t* statistic:
  $$t = \frac{M - \mu}{S_M}$$
- Plugging in our values:
  $$t = \frac{7.8 - 4.6}{1.11} = 2.88$$


:: right ::

<img src="/images/exam2_review/t_val.png" class="w-3/4 mx-auto"/>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Example: Counseling Session Contracts

:: left ::

Step 6: Make a decision

- Our calculated *t* statistic is 2.88.
- Our critical values are ±2.776.
- Since 2.88 is greater than 2.776, we reject the null hypothesis.

:: right ::

<img src="/images/exam2_review/t_val.png" class="w-3/4 mx-auto"/>

*This means that if there is no difference in attendance between students who sign the contract and those who do not, we would expect to get a t statistic this extreme or more extreme less than 5% of the time. So we reject the null hypothesis, and instead we conclude that there is a significant difference in attendance.*

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Review: Degrees of freedom

:: content ::
- To use a *t* table and run a *t* test, we need to determine our **degrees of freedom**. 

<div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-3 mt-2">
Degrees of freedom = number of scores that are free to vary when we estimate a population parameter from a sample.
</div>

- Degrees of freedom reflect the amount of **independent information** available.
- More degrees of freedom means more independent information, which means a more accurate estimate of the population parameter.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Degrees of freedom for a single-sample t test

## df = n-1

:: content ::

- Here, we are estimating the population *standard deviation* from our sample data.
- We *know* the mean.
- Our degrees of freedom reflect the number of scores that could vary (amount of independent information we have) when a given parameter is known.
- Because our mean is known, that means all the scores in our dataset could vary, except one. Once we know the values of the first n-1 scores, the last score MUST take on a specific value.

**Example:**
- If we have 5 scores that sum to 40 (mean = 8), and we know the first 4 scores are 6, 8, 10, and 4, what must the last score be?
- The last score must be 12, because 6 + 8 + 10 + 4 + 12 = 40.
- So, with 5 scores, we have 4 degrees of freedom (5 - 1 = 4).

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Review: Z Scores and Z Tests

:: left ::
- A z score tells us how many standard deviations a score is from the mean.
- Formula: $z = \frac{X - \mu}{\sigma}$
  - X = score
  - μ = population mean
  - σ = population standard deviation

:: right ::
- A z test compares a sample mean to a population mean, when we know the population standard deviation.
- Formula: $z = \frac{\bar{X} - \mu}{\frac{\sigma}{\sqrt{n}}}$
  - $\bar{X}$ = sample mean
  - μ = population mean
  - σ = population standard deviation
  - n = sample size

*Remember, when we are dealing with distributions of means, we use the standard error ($\frac{\sigma}{\sqrt{n}}$).*

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Raw Scores, Z Scores, and Percentiles

:: content ::

- A raw score is the original score (e.g., 85 on a test).
- A *z* score tells us how many standard deviations a score is from the mean.
- A percentile tells us the percentage of scores that fall below a given score.
- We can convert between raw scores, z scores, and percentiles using the mean and standard deviation of the distribution.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Moving between raw scores and z scores

:: content ::

- To convert a raw score to a z score:
  $$z = \frac{X - \mu}{\sigma}$$

<p v-click>

- To convert a z score to a raw score, we do some algebra to solve for X! 

$$z = \frac{X - \mu}{\sigma}$$

$$z*\sigma = X - \mu$$

$$z*\sigma + \mu = X$$

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Moving between raw scores and z scores

:: content ::

- Let's practice. The average grade on Homework 1 was 90 with a standard deviation of 5. Your grade was 85. What is your z score?

- To convert a raw score to a z score:
  $$z = \frac{X - \mu}{\sigma}$$

<p v-click>

$$z = \frac{85 - 90}{5} = -1$$

You scored 1 standard deviation below the mean.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Moving between raw scores and z scores

:: content ::

- Let's practice. The average grade on Homework 1 was 90 with a standard deviation of 5. Your friend scored .5 standard deviations above the mean ($z = .5$). What was their raw score?

- To convert a *z* score to a raw score:
  $$z*\sigma + \mu = X$$

<p v-click>

$$X = 0.5*5 + 90 = 92.5$$

Your friend scored 92.5 on Homework 1.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Moving between raw scores and z scores for means

:: content ::

- To convert a sample mean to a z score:
  $$z = \frac{M - \mu}{\sigma_M}$$

Where $\sigma_M$ is the standard error: $\sigma_M = \frac{\sigma}{\sqrt{n}}$

<p v-click>

- To convert a z score to sample mean, we do some algebra to solve for M! 

$$z = \frac{X - \mu}{\sigma_M}$$

$$z*\sigma_M = M - \mu$$

$$z*\sigma_M + \mu = M$$

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Moving between raw scores and z scores for means: Practice

:: content ::

- Let's practice. The average grade on Homework 1 was 90 with a standard deviation of 5. A sample of 25 students had a mean score of 85. What is the z score for this sample mean?

<p v-click>

- First, we need to find the standard error:

$$\sigma_M = \frac{\sigma}{\sqrt{n}} = \frac{5}{\sqrt{25}} = 1$$

- Now we can find the z score:

$$z = \frac{M - \mu}{\sigma_M} = \frac{85 - 90}{1} = -5$$

This sample of students scored 5 standard errors below the mean.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Moving between raw scores and z scores for means: Practice

:: content ::

- The average grade on Homework 1 was 90 with a standard deviation of 5. Nine students used chatGPT to help with their homework. Their mean score was 2 standard errors above the class mean. What was their mean score?

<p v-click>

- First, we need to find the standard error:

$$\sigma_M = \frac{\sigma}{\sqrt{n}} = \frac{5}{\sqrt{9}} \approx 1.67$$

- Now we can find their mean score:

$$M = z*\sigma_M + \mu = 2*1.67 + 90 \approx 93.34$$

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Moving between raw scores, z scores, and percentiles for means

:: content ::

- To convert between z scores and percentiles, we can use a *z* table or computer program.
- This will enable us to find the percentage of scores below a given z score, or the z score that corresponds to a given percentile.
- We can also use this to find critical values for hypothesis tests or confidence intervals.
- We can then convert between z scores and raw scores using the formulas from the prior slides.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Moving between raw scores, z scores, and percentiles for means: Practice

:: content ::

- Is there a significant difference between the mean score of the 9 students who used chatGPT (M = 93.34) and the class mean (μ = 90, σ = 5)?
 Use α = .05.

<p v-click>

- We already calculated the z score for this sample mean:
$$z = \frac{M - \mu}{\sigma_M} = \frac{93.34 - 90}{1.67} \approx 2$$

- Now we need to find the percentage of scores that fall below this z score. We can use a z table or computer program to find this.
- Using a z table, we find that the percentage of scores below a z score of 2 is approximately 97.72%.

</p>

<p v-click>

With α = .05, we would reject the null hypothesis if the percentage of scores below our z score is less than 2.5% or greater than 97.5%. Since 97.72% is greater than 97.5%, we reject the null hypothesis.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Finding confidence intervals for means

:: content ::

*What is the 95% confidence interval for the mean score of the 9 students who used chatGPT (M = 93.34)?*

<p v-click>

- First, we can imagine that this **sample mean** lies in the center of a **sampling distribution of means**. 
- Because we know the population standard deviation, we can compute the standard error of the mean directly and use a *z* distribution.
- To find the 95% confidence interval, we need to find the z scores that correspond to the middle 95% of the distribution.
- Second, we need to determine what percentiles correspond to the middle 95%. This means we need to leave 2.5% in each tail.
- Our lower percentile is 2.5% and our upper percentile is 97.5%.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Finding confidence intervals for means (continued)

:: content ::

- Using a z table, we find that the z score that corresponds to 2.5% is approximately -1.96 and the z score that corresponds to 97.5% is approximately 1.96.
- Now we can convert these z scores to raw scores using the formula: $M = z*\sigma_M + \mu$


<p v-click>

- For the lower bound:
$$M = -1.96*1.67 + 93.34 \approx 90.06$$
- For the upper bound:
$$M = 1.96*1.67 + 93.34 \approx 96.62$$

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Effect sizes: Building an intuition

:: content ::

- The average grade on Homework 1 was 90 with a standard deviation of 5. One hundred students used chatGPT to help with their homework. Their mean score was 2 standard errors above the class mean. What was their mean score?

<p v-click>

- First, we need to find the standard error:

$$\sigma_M = \frac{\sigma}{\sqrt{n}} = \frac{5}{\sqrt{100}} \approx 0.5$$

- Now we can find their mean score:
$$M = z*\sigma_M + \mu = 2*0.5 + 90 \approx 91$$

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Effect sizes: Building an intuition

:: content ::

- Is there a significant difference between the mean score of the 100 students who used chatGPT (M = 91) and the class mean (μ = 90, σ = 5)?
 Use α = .05.

<p v-click>

- We already calculated the z score for this sample mean:
$$z = \frac{M - \mu}{\sigma_M} = \frac{91 - 90}{0.5} = 2$$

- Now we need to find the percentage of scores that fall below this z score. We can use a z table or computer program to find this.
- Using a z table, we find that the percentage of scores below a z score of 2 is approximately 97.72%.

</p>

<p v-click>

With α = .05, we would reject the null hypothesis if the percentage of scores below our z score is less than 2.5% or greater than 97.5%. Since 97.72% is greater than 97.5%, we reject the null hypothesis and conclude there is a *significant* difference.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Effect sizes: Building an intuition

:: content ::

- We know there is a *significant* difference between the mean score of the 100 students who used chatGPT (M = 91) and the class mean (μ = 90, σ = 5).
- But is this a **meaningful** difference?
- To answer this, we can consider the *size* of the difference between the two means, while *ignoring* sample size.
- Remember, with a large enough sample size, even a tiny difference can be statistically significant.
- The sample size affects the standard error, which affects the *z* score, which affects the *p* value.
- But the sample size does not affect the **actual** difference between the two means (M - μ).
- So, is a difference of 1 point (91 - 90) meaningful in this context?


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Effect sizes: Computing Cohen's d

:: content ::
- Sometimes, we can use our intuition to determine if a difference is meaningful.
- But other times, we may want a more objective measure of the size of the difference.
- We can use an effect size measure called Cohen's d to quantify the size of the difference between two means.
- Cohen's d is calculated as the difference between two means divided by the standard deviation.

<p v-click>

$$d = \frac{M - \mu}{\sigma} = \frac{91 - 90}{5} = 0.2$$

</p>

<p v-click>
Cohen's d of 0.2 is considered a small effect size. This suggests that while the difference between the two means is statistically significant, it may not be practically meaningful.
</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Effect size tells us how much two populations do not overlap

:: left ::

<img src="/images/lecture9/effect_size.png" alt="Effect size" class="w-1/2 mx-auto"/>

Overlap can be decreased in two ways:

1. When two population ==means are far apart==, the overlap of the distributions is less and the effect size is bigger.

:: right ::

<img src="/images/lecture9/effect_size_var.png" alt="Effect size variance" class="w-3/4 mx-auto"/>
<br>

2. When ==variability within each distribution is smaller==, overlap decreases and effect size increases. 


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Statistical Power

:: content ::
- ==**Statistical Power**== = probability of correctly rejecting $H_0$ when it’s false (avoiding a Type II error).
- In other words, power is the likelihood we will reject the null hypothesis *when we should.*
- Ranges from probability of 0.00 to probability of 1.00
- Probability of 0.80 (80%) is the conventional goal.
  - Many studies in psychology are underpowered!

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Statistical Power (Continued)

:: content :: 

<img src="/images/lecture9/power.png" alt="Statistical power" class="w-5/8 mx-auto"/>


- When testing hypotheses, there are two ways we can be correct and two ways we can be wrong:

1. ==Correctly rejecting the null hypothesis (true positive)==
2. Correctly failing to reject the null hypothesis (true negative)
3. Incorrectly rejecting the null hypothesis (Type I error)
4. Incorrectly failing to reject the null hypothesis (Type II error)


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Five factors that influence power

:: content :: 

Power increases when:
1. Alpha **increases** 
- This is usually not a good idea: This is like changing the rules of a basketball game by shortening the basket height, or widening the goalposts in football or soccer
- Increasing the alpha level from 0.05 to 0.1 increases the probability of type I error from 5% to 10%!

<p v-click>

2. Turn a **two-tailed test** into a **one-tailed test**
- This is only appropriate if you have a strong theoretical reason to predict the direction of the effect.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Five factors that influence power (continued)

:: content :: 

Power increases when:

3. Sample size (n) **increases** 
- This is a good idea: More data gives us a clearer picture of the population.
- Larger samples give us more precise estimates of population parameters, reducing standard error and increasing the likelihood of finding a statistically significant effect

<p v-click>

4. Difference in means **increases** 
- This is usually not under our control, but we can try to design studies that maximize effect size.
- For example, we can use extreme groups (e.g., comparing very high vs. very low anxiety individuals) to increase the difference between means.
- We can also make our manipulations stronger: Maybe we are studying how effective group therapy is for public speaking anxiety, so we increase the length of therapy from 3 to 6 months to increase the difference between the means of each therapy vs. no therapy group

</p>

---
layout: top-title
color: indigo-light
align: lt
---


:: title ::
# Five factors that influence power (continued)

:: content :: 

Power increases when:

5. Standard deviation **decreases** 
- This is also a good idea: Populations with less variability make it easier to detect differences between groups.
- Often not under our control, but we can try to use reliable measures and reduce measurement error to decrease variability within groups.
- For example, if we are measuring anxiety, we can use a well-validated questionnaire rather than a single-item measure to reduce measurement error and variability within groups.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# When and how do we use power?

:: content :: 

We use ==power calculators== in two ways:
1. Calculate power ==after== conducting study from several pieces of information (*post hoc*).

2. Conduct power analyses ==before== conducting study to determine sample size necessary to achieve given level of power given estimate of effect size (*a priori*).

*A priori* power calculations are especially useful because they help us determine the sample size needed to achieve 80% power with an alpha level of 0.05

We can use online calculators or packages for R to conduct power analyses.

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-1 transform">
Computing power is largely beyond the scope of this course, but it is very important you understand power at a conceptual level.
</div>
</div>


---
layout: cover
color: indigo-light
---

# That’s all for today!
See you next Thursday for Exam 2!

