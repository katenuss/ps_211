---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 11
exportFilename: ps211_fall2025_lecture11
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1  
### Lecture 11: Independent-Sample *t* Tests

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates & Reminders

:: content ::
- ==The mid-semester survey== has been posted. Please take a few minutes to fill it out!
- If 38 people fill it out by next class, everyone will get 2 bonus percentage points on Exam 3. 
- I'm already finding it super useful, so thank you to those who have filled it out!
  - One note: Answer keys for the homeworks *ARE* posted (on Blackboard and Slack) and are not taken down.
- ==Homework 3== will be posted by the end of the week and is due on Friday, Oct. 31.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates & Reminders

:: content ::
- ==Exam 2== grades have been posted.
- This exam was hard!
- We changed the denominator from 30 to 28 to account for the fact that several questions were overly confusing and challenging.
- We will go over the challenging questions today, in a few moments.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Exam 2: Why was it so hard?

:: left ::

### Things that are on me:
- We went over *a lot* of material fairly quickly. -> Exam 3 will cover less new material.
- You were given opportunities to practice the material, but not the format. -> We will do more practice multiple choice questions in class.
- The wording of some questions could have been clearer. -> We will try to make Exam 3 clearer.

<p v-click>

### Both you and me
- Some questions asked you to *apply* concepts in new ways and think critically. This is hard! -> We will do more of this in class.

</p>

:: right ::

<p v-click>

### Things that are on you:
- Engagement in the course is lower than it was for the lectures leading up to Exam 1. 
- The concepts in this part of the course are more challenging, so you need to spend more time reviewing and practicing outside of class.
- Some of the exam questions that people struggled with were very closely related to similar homework questions that people did well on. In addition to *completing* the homework, make sure you *understand* it.
- Ask for help! If we are moving too quickly, raise your hand and tell us! Or come to office hours!

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Hard questions from Exam 2

:: content ::

[We are going over these outside of the slide deck.]


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Types of *t* Tests

:: content ::
There are 3 types of *t* tests, used in different research scenarios:

1. **Single-sample *t* test** – Compare a sample mean to a population mean when the population SD is unknown.  

<div class="mt-0 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-3 transform">
  Before Exam 2!
</div>
</div>

<p v-click>

2. **Paired-sample *t* test** – Compare two samples when every participant is in both samples (within-subjects design).  

<div class="mt-0 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-3 transform">
  Last class!
</div>
</div>

</p>

<p v-click>

3. **Independent-samples *t* test** – Compare two samples when participants are in only one group (between-subjects design).
<div class="mt-0 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-3 transform">
  Today!
</div>
</div>

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# A brief aside: Where did *t* tests come from?

:: content ::
- *t* tests were developed by William Sealy Gosset in 1908 while working at the Guinness Brewery in Dublin, Ireland.  Gosset wanted to monitor the quality of raw materials (e.g., barley) used in brewing, but he had only small samples to work with.  
- To address this problem, he developed the *t* distribution and the *t* test, which allowed him to make inferences about population means from small samples.  
- He published his work under the pseudonym "Student" to avoid conflicts with Guinness's policy against employees publishing research.


<img src="/images/lecture11/guinness.jpg"  class="w-1/4 mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# More contributions from Guinness Brewery!

:: content ::

- Stella Cunliffe, a statistician at Guinness in the 1950s, developed quality control methods that improved the consistency of beer production.  
- At the time, workers had to either accept or reject barrels of beer by moving them up or down a hill. 
- She used *t* testing to determine that *accepting* barrels was easier than *rejecting* them, leading to bias in quality control. She redesigned the process to reduce this bias.
- She became the first woman president of the Royal Statistical Society in 1975.

<img src="/images/lecture11/guinness.jpg"  class="w-1/4 mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Types of *t* Tests

:: content ::
There are 3 types of *t* tests, used in different research scenarios:

1. **Single-sample *t* test** – Compare a sample mean to a population mean when the population SD is unknown.  

<div class="mt-0 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-3 transform">
  Before Exam 2!
</div>
</div>


2. **Paired-sample *t* test** – Compare two samples when every participant is in both samples (within-subjects design).  

<div class="mt-0 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-3 transform">
  Last class!
</div>
</div>

3. **Independent-samples *t* test** – Compare two samples when participants are in only one group (between-subjects design).
<div class="mt-0 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-3 transform">
  Today!
</div>
</div>



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Between- vs Within-Subjects Designs

:: left ::
### Within-Subjects / Within-Groups
- Each participant experiences **all** levels of the independent variable.  
- Comparisons are made *over time or conditions* for the same people.

<p v-click>

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-3 transform">
  What is an advantage of a within-subjects design?
</div>
</div>

</p>


:: right ::
### Between-Subjects / Between-Groups
- Each participant experiences **only one** level of the independent variable.  
- Comparisons are made *between different people*.

<p v-click>

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-3 transform">
  What is an advantage of a between-subjects design?
</div>
</div>

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Within-Subjects Designs: Pros & Cons

:: left ::

### Advantages
- Practical: Fewer participants needed.
- Statistical: Often the best way to control for individual differences, which reduces variability and increases statistical power.
  - Decreases subject variability because each participant is their own baseline or ‘control’


:: right ::

<p v-click>

### Disadvantages
- Carryover effects:
  - Once participants have experienced one condition, it may influence their behavior in subsequent conditions.
- Order effects
    - Practice effects: Improvement due to familiarity with the task.
    - Fatigue effects: Decline in performance due to tiredness or boredom.
  - "Counterbalancing" can help mitigate this issue, but it may not eliminate it entirely.
  

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Between-Subjects Designs: Pros & Cons

:: left ::

### Advantages
- No carryover effects
- No order effects
- Sometimes the only ethical design (e.g., drug trials where participants cannot receive two different treatments)


:: right ::

<p v-click>

### Disadvantages
- More participants needed
- Individual differences can introduce variability


</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Which *t* Test Should I Use?

:: content ::
- **Within-groups design** → use a *paired-samples t test*  
- **Between-groups design** → use an *independent-samples t test*


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Practice: Paired-Samples *t* Test

:: left ::
*Students complete a short quiz twice — once with music, once in silence. The instructor wants to know if background music helps or hurts performance.*

- Scores with music: 7, 6, 5, 8, 7
- Scores without music: 8, 6, 7, 9, 8

<div class="mt-0 w-full flex justify-center">
<div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-2 transform">
  What would you tell the instructor about the effect of background music on quiz performance?
</div>
</div>

:: right ::

<p v-click>

**Hint 1:** You will need to compute: 
- The difference in each pair of scores
- The mean and standard deviation of the differences
- The standard error of the mean differences
- The *t* statistic

</p>


<p v-click>

**Hint 2:** Using an alpha level of .05 for a two-tailed test, the critical values for df = 4 are ± 2.776.

</p>

<p v-click>

**Hint 3:** It doesn't matter whether you subtract "with music - without music" or "without music - with music," as long as you are consistent. The magnitude of the *t* statistic will be the same; only the sign will differ.

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Practice: Paired-Samples *t* Test (Solution)

:: left ::
1. Step 1: Populations & Assumptions
- Group 1: Quiz scores with music.
- Group 2: Quiz scores without music.  
- Distribution: Differences between paired scores.  
- Assumptions: 
  - DV is numeric. 
  - Random sample of students.
  - Population distribution (including SD in quiz scores) is unknown.

:: right :: 
2. Step 2: Hypotheses
- **Null (H₀):**  μ₁ = μ₂  (no mean difference)  
  - or equivalently:  μ₁ − μ₂ = 0
  - In words: Music does not affect quiz performance. 

- **Research (H₁):**  μ₁ ≠ μ₂  (there is a difference)
  - or equivalently:  μ₁ − μ₂ ≠ 0
  - In words: Music affects quiz performance.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Practice: Paired-Samples *t* Test (Solution)

:: content ::
3. Step 3: Determine Characteristics of the Comparison Distribution. 
- We know the mean of the comparison distribution is 0 under H₀. Now we need to compute the standard error (SE) of the mean differences.  
- This requires estimating the population standard deviation ($\sigma$) of the difference scores.
- Our best estimate of the population standard deviation will be the *sample* standard deviation (s) of the difference scores.
- First, we compute the difference scores (With Music − Without Music).
- Then, we need to compute their mean. *We will also need this later!*
- Finally, we compute the sample standard deviation (s) of the difference scores.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Practice: Paired-Samples *t* Test (Solution)

:: content ::

<div class="text-xs w-2/3 mx-auto mt-2" style="line-height:1.1">

<table class="border-collapse w-full">
  <thead>
    <tr>
      <th>Participant</th>
      <th>With Music</th>
      <th>Without Music</th>
      <th>Difference (D)</th>
      <th>D − Mean D (-1)</th>
      <th>Squared Deviation</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>7</td><td>8</td><td>-1</td><td>0</td><td>0</td></tr>
    <tr><td>2</td><td>6</td><td>6</td><td>0</td><td>1</td><td>1</td></tr>
    <tr><td>3</td><td>5</td><td>7</td><td>-2</td><td>-1</td><td>1</td></tr>
    <tr><td>4</td><td>8</td><td>9</td><td>-1</td><td>0</td><td>0</td></tr>
    <tr><td>5</td><td>7</td><td>8</td><td>-1</td><td>0</td><td>0</td></tr>
  </tbody>
  <tfoot>
    <tr>
      <td colspan="3" style="text-align:right;"><strong>Sum of Differences (ΣD)</strong></td>
      <td><strong>-5</strong></td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td colspan="3" style="text-align:right;"><strong>Mean Difference (ΣD / n)</strong></td>
      <td colspan="3"><strong>-5 ÷ 5 = -1.0</strong></td>
    </tr>
    <tr>
      <td colspan="5" style="text-align:right;"><strong>Sum of Squares (SS)</strong></td>
      <td><strong>2.00</strong></td>
    </tr>
    <tr>
      <td colspan="5" style="text-align:right;"><strong>Sample Variance (s² = SS / (n-1))</strong></td>
      <td><strong>0.50</strong></td>
    </tr>
    <tr>
      <td colspan="5" style="text-align:right;"><strong>Sample SD (√s²)</strong></td>
      <td><strong>0.71</strong></td>
    </tr>
  </tfoot>
</table>

</div>
---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Practice: Paired-Samples *t* Test (Solution)

:: left ::

3. Step 3: Determine Characteristics of the Comparison Distribution (continued)
- Now, we can compute the standard error (SE) of the mean differences:  
  $$SE = \frac{s}{\sqrt{n}} = \frac{0.71}{\sqrt{5}} = 0.318$$
- Thus, our comparison distribution has:  
  - Mean = 0 and SE = 0.318
- Remember, this is the mean and SE of the *difference scores* we would expect if we drew many samples of 5 students from a population where music has no effect on quiz performance.

:: right ::
4. Step 4: Determine the Critical Values (or Cutoffs)
- Now, we need to determine where the middle 95% of this comparison distribution lies (since we are using an alpha level of .05 for a two-tailed test).
- Remember, we are using a *t* distribution to account for our additional uncertainty due to estimating the population standard deviation from our sample.
- We can find out critical values from a t-table or computer program for a two-tailed test with df = (n − 1) = 4.:
→ $t_{crit}= ± 2.776$


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Practice: Paired-Samples *t* Test (Solution)

:: left ::

5. Step 5: Calculate the Test Statistic
- We calculate our *t* value using the formula:  
  $$t = \frac{M_{diff}-\mu_D}{SE}$$  
  where:  
  - $M_{diff}$ = sample mean difference  
  - $\mu_D$ = hypothesized population mean difference (0 under H₀)  
  - SE = standard error of the mean differences

$$t = \frac{M_{diff}-0}{SE} = \frac{-1}{0.318} = -3.14$$

:: right ::

<p v-click>

6. Step 6: Make a Decision

- Compare calculated *t* to critical values:  
  - Calculated *t* = -3.14  
  - Critical values = ± 2.776
  - -3.14 < -2.776 → **Reject H₀**
  - Interpret sign: Since we subtracted (With Music − Without Music), a negative *t* indicates that scores were lower with music.

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-1 transform">
  The results suggest that background music has a significant effect on quiz performance, with students performing worse when music is played during the quiz.
</div>
</div>

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Thinking critically: Paired-Samples *t* Test 

:: content ::

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-1 transform">
  The results suggest that background music has a significant effect on quiz performance, with students performing worse when music is played during the quiz.
</div>
</div>

**Why can we conclude that we have a significant effect without computing a *p*-value?**

A. We can't. This is a mistake.

B. Because our calculated *t* value falls in the critical region, we know that the *p*-value is less than .05.

C. Because our calculated *t* value is negative, we know that the *p*-value is less than .05.

D. Because our calculated *t* value is greater than 1, we know that our results are significant.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Thinking critically: Paired-Samples *t* Test 

:: content ::

<div class="mt-0 w-full flex justify-center">
<div class="bg-yellow-100 border-1 border-yellow-300 rounded-lg shadow-md p-1 transform">
  The results suggest that background music has a significant effect on quiz performance, with students performing worse when music is played during the quiz.
</div>
</div>

**Given that our calculated mean difference is -1, and our *t* value is -3.14, which of the following are the most likely values for the 95% confidence interval?**

A. [-1, 1]

B. [-3.14, -1]

C. [-3.14, 3.14]

D. [-1.9, -0.1]

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What if the researcher has used a between-subjects design? 

:: content ::

<div class="mt-0 w-full flex justify-center">
<div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-2 transform">
The researcher realizes his study is flawed because students took the quiz twice, which may have influenced their performance. How could the researcher redesign the study to use a between-subjects design?
</div>
</div>

<p v-click>

**Answer:**
- The researcher could randomly assign students to one of two groups: one group with music and another group without music. 
- The researcher would then compare the quiz scores of the two independent groups using an independent-samples *t* test.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Independent-Samples *t* Tests

:: content ::
- Compares two means from **independent groups.**  
- Each group has different people that each experience **only one** level of the independent variable.  
- Example: Comparing quiz scores of students who took the quiz with music vs. students who took the quiz in silence.  
  - The scores are independent because no student is in both groups. There are no paired scores.

<p v-click>
<div class="mt-0 w-full flex justify-center">
<div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-2 transform">

Can you think of another study design where you would use an independent-samples *t* test?
</div>
</div>
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
layout: cover
color: indigo-light
---

# That’s all for today!
