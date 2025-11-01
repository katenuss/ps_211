---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 13
exportFilename: ps211_fall2025_lecture13
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1  
### Lecture 13: Reporting results in APA style, One-way ANOVA

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates & Reminders

:: content ::
- ==Homework 3== is due on **Friday, October 31** at 11:59 PM.
  - Submit via Blackboard as a PDF file.
  - Late submissions will incur a penalty of 3% per day.
  - We are going to try to post grades and answers by Monday night.
- ==Exam 3== will be on **Thursday, Nov. 6th** during our regular class time.
    - It will focus on material from Lectures 10-13 (today). 
    - It will build on material from earlier in the course, so be sure to review those topics as well.
    - The format will be the same as Exam 1 (33 multiple choice questions).
    - A review sheet will be posted by the end of the day tomorrow. 

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Confidence Intervals

:: content ::
- Remember, a *z* or *t* statistic corresponds to a percentile in the sampling distribution.
- For example, if we have *t* = 2.45 with df = 28, we can look up the corresponding p-value: *p* = .022.
- This means that if the null hypothesis were true, we would expect to see a *t* value this extreme (or more extreme) only 2.2% of the time.

<p v-click>

- Confidence intervals rely on this logic **in reverse**.
- Instead of asking "Given the null hypothesis, what is the probability of observing this data?",
- We ask "Given the observed data, what range of population values are plausible?"
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Confidence Intervals (Continued)

:: content ::
- Instead of starting with the *null* distribution, we start with the *sampling* distribution.
- We assume our sample mean was drawn from a population with some unknown mean μ.
- Our best estimate of μ is the sample mean *M*.
- But because of sampling variability, ==we know that *M* might not equal μ exactly.==

<p v-click>

- So we construct a range of values around *M* that are plausible values for μ.
- This range is called a **confidence interval (CI)**.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Confidence Intervals (Continued)

:: content ::
- To find a **95% confidence interval**, we identify the range of values that would fall within the middle 95% of the sampling distribution.
- This corresponds to the values between the 2.5th and 97.5th percentiles.
- We can use the critical *t* value for our sample size to find these cutoffs.
- Our critical *t* value tells us how far from *M* we need to go to capture 95% of the sampling distribution.

<img src="/images/lecture13/t_distribution_df5.png"  class="w-1/3 mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Confidence Intervals (Continued)

:: content ::
- Remember, our *t* value is in units of ==standard errors (SE)==.
- A critical *t* of 2.57 means that 95% of the distribution falls within 2.57 SEs of the mean.


<img src="/images/lecture13/sampling_distributions_CI.png"  class="w-2/3 mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Confidence Intervals (Continued)

:: content ::
- Remember, our *t* value is in units of ==standard errors (SE)==.
- A critical *t* of 2.57 means that 95% of the distribution falls within 2.57 SEs of the mean.


- We can use this to calculate the CI around our sample mean:
$$\text{CI} = M \pm (t_{critical} \times SE)$$
Where:
- *M* = sample mean
- $t_{critical}$ = critical *t* value for desired confidence level
- *SE* = standard error of the mean


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Confidence Intervals (Continued)

:: content ::
**One more time...**
- Our best estimate of μ is the sample mean *M*.
- But because of sampling variability, ==we know that *M* might not equal μ exactly.==
- So we construct a ==range of values around *M*== that are plausible values for μ.
- We do this by determining where 95% (or 99% or 99.9%, etc.) of the sampling distribution lies.
- We compute *this* by finding the critical *t* value and multiplying it by the standard error.
- This range is called a **confidence interval (CI)**.
- Lower standard error -> narrower CI.
- Higher standard error -> wider CI.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Review: Confidence Intervals (Continued)

:: content ::

**Practice question:**

*How does increasing the sample size affect the width of a confidence interval?*

A. Increases the width because there is more data.

B. Increases the width because the critical t-value gets larger.

C. Decreases the width because the standard error is smaller and the estimate is more precise.

D. No effect on the width because n does not factor into CI calculations.

<br> 

<p v-click>

**Answer:** C. Decreases the width because the standard error is smaller and the estimate is more precise.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Review: Confidence Intervals (Continued)

:: content ::

**Practice question:**

*How does increasing the estimate of the sample mean affect the width of a confidence interval?*

A. Increases the width because the values are higher.

B. Increases the width because the critical t-value gets larger.

C. Decreases the width because the standard error will also increase.

D. No effect on the width because the sample mean does not factor into CI calculations.

<br> 

<p v-click>

**Answer:** D. No effect on the width because the sample mean does not factor into CI calculations.

</p>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Recap: Worksheet example

:: content ::
- Let's go through the worksheet together.
- I will attempt to fill it out in real time. 
- Please correct me if I make a mistake!



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Reporting Results in APA Style

:: content ::
APA style tells us **how to clearly report statistics** so others can understand and replicate our work.  
It ensures clarity and consistency across psychology and related sciences.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# What is APA Style?

:: content ::

- **APA** = *American Psychological Association*  
- A standardized format for writing and reporting scientific results  
- Ensures clarity, transparency, and consistency across research papers  

<div class="mt-4 bg-blue-50 border-l-4 border-blue-400 p-3 rounded">

**APA style guides how we:**  
• write numbers and statistics  
• report results of tests (*t*, *z*, *F*, etc.)  
• format p-values, CIs, and effect sizes  
</div>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Why Use APA Style?

:: content ::
- Helps readers quickly interpret results.  
- Makes research **replicable** and **comparable**.  
- Prevents ambiguity — everyone reports in the same format. 
- Required by most psychology journals and conferences. 

<div class="mt-3 italic text-gray-700">
Think of APA as the “grammar rules” of scientific writing.
</div>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Always Include These Elements

:: content ::
| Element | Description | Example |
|----------|--------------|----------|
| **Test statistic** | Which test you ran (*t*, *z*, *F*) | *t* |
| **Degrees of freedom (df)** | Indicates sample size info | *t*(28)|
| **Test value** | The computed statistic | *t*(28) = 2.45 |
| **p value** | Probability under H₀ | *p* = .004 or *p* < .001 |
| **Descriptive stats** | Means, SDs for each group | *M* = 5.3, *SD* = 1.2 |

✅ These should appear in **every** statistical report.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Technically optional (but strongly recommended)

:: content ::
| Element | Why Include It | Example |
|----------|----------------|----------|
| **Effect size** | Shows *magnitude* of difference | *d* = 0.68 |
| **Confidence interval (CI)** | Range of plausible values | 95% CI \[0.12, 1.24] |
| **Exact p value** | More informative than *p* < .05 | *p* = .037 |

<div class="mt-3 text-gray-600">

- Including these helps readers understand *how strong* and *how precise* your findings are.
- Many journals now require effect sizes, CIs, and exact p-values.
- There is no reason *not* to include them!
</div>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Reporting a *z* Test

:: content ::

**Template**

$M = X, \ SD = Y, \ z = Z, \ p = P, \ d = D,  \text{ 95\% CI [LL, UL]}$

**Example**

Students’ average rent (*M* = $920, *SD* = $192) was significantly higher than the population mean of $500, *z* = 9.39, *p* < .001, *d* = 4.20, 95% CI \[$832, $1008].

✅ No *degrees of freedom* are reported for *z* tests. *Z* tests are based on known population parameters, not sample estimates, so df are not applicable.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Reporting a One-Sample *t* Test

:: content ::

**Template**

$t(df) = X.XX, \ p = P, \ d = D, \text{ 95\% CI [LL, UL]}$

**Example**

The sample’s mean reaction time (*M* = 312 ms, *SD* = 28) was significantly faster than the population mean of 350 ms, *t*(14) = −5.68, *p* < .001, *d* = 1.47, 95% CI \[−50.1, −21.9].

<br>

✅ State the **known or hypothesized** population mean and the sample mean and SD.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Reporting a Paired-Samples *t* Test

:: content ::
**Template**

$t(df) = X.XX, \ p = P, \ d = D, \text{ 95\% CI [LL, UL]}$

**Example**

Participants recalled more words after caffeine (*M* = 12.3, *SD* = 2.1) than without caffeine (*M* = 9.8, *SD* = 2.5), *t*(19) = 3.42, *p* = .003, *d* = 0.76, 95% CI \[0.92, 4.11].

<br>

✅ State the means and SDs for **both** conditions.




---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Reporting an Independent-Samples *t* Test

:: content ::

**Template**

$t(df) = X.XX, \ p = P, \ d = D, \text{ 95\% CI [LL, UL]}$

**Example**

Participants in the study-group condition had higher quiz scores (*M* = 84.6, *SD* = 4.2) than participants in the individual condition (*M* = 78.3, *SD* = 5.0), *t*(38) = 4.11, *p* < .001, *d* = 1.30, 95% CI \[3.21, 9.59].

✅ State the means and SDs for **both** groups.

<p v-click>

**Practice question:** How many participants were in this study?

A. 38

B. 40

C. 38 per group (76 total)

D. 36

</p>

<p v-click>

**Answer:** B. 40
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Formatting Rules (APA 7th Edition)

:: content ::
- Italicize *t*, *z*, *p*, *M*, *SD*, *F*, *r*  
- Use **two decimal places** for statistics (except *p*)  
- Report *p* values as:
  - *p* = .042 (no leading zero)
  - *p* < .001 (for very small values)
- Match decimal precision across CIs and descriptive stats  

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Putting It All Together

:: content ::
<div class="grid grid-cols-2 gap-6">

<div>

### Always Include
- Test type and statistic (*t*, *z*, etc.)  
- df (for *t* tests)  
- *p* value  
- Descriptive stats (*M*, *SD*)

</div>

<div>

### Usually Include
- Effect size (*d*, *r*, etc.)  
- Confidence interval  
- Directional phrasing (“significantly greater than…”)

</div>

</div>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# APA Reporting: Practice 🧠

:: content ::
**Rewrite each in APA style:**

1. The Caffeine group got an average of 14.2 right answers (standard deviation = 3), and the Placebo group got 11.1 right answers (SD 2.8). The difference was statistically significant with t = 3.2 and p=0.004, df = 28. The Effect size was D= 0.79 and 95 percent CI = (0.50 TO 4.80).

2. Participants slept on average 7.6 Hours (s.d.=0.8) which was not significantly different from the national Mean of 7.5. The T test was not significant (P = .66; t = .45; DF=19). Cohen’s D = 0.06 and the 95% confidence interval was (-0.42 , 0.62).


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Practice: Answers 

::content ::
Below are the **APA-corrected versions** of those two messy examples.

#### ☕️ Correct Example 1 — Independent-Samples *t*

> The caffeine group (*M* = 14.2, *SD* = 3.0) scored higher than the placebo group (*M* = 11.1, *SD* = 2.8),  
> *t*(28) = 3.20, *p* = .004, *d* = 0.79, 95% CI \[0.5, 4.8].

*What was fixed?*
- Italicize statistical symbols (*t*, *p*, *d*, *M*, *SD*).  
- Report *t*(df) = value, *p*, *d*, and 95% CI in this order.  
- Use brackets for the CI and **no leading zeros** for *p* values less than 1.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Practice: Answers (Continued)

:: content ::
#### 😴 Correct Example 2 — One-Sample *t*

> Participants slept an average of 7.6 hours (*SD* = 0.8), which did not differ significantly from the national mean of 7.5,  
> *t*(19) = 0.45, *p* = .66, *d* = 0.06, 95% CI \[−0.42, 0.62].

*What was fixed?*
- Write numbers and units clearly (“7.6 hours”).  
- Keep *p* = .66 (not *P* = 0.66).  
- Report CI in brackets.


---
layout: section
color: indigo-light
align: lt
---

Moving to our next topic...
# One-Way ANOVA


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Are We Worse Drivers When on the Phone?

:: content ::

A simple *t*-test compares driving ability when talking vs. not talking on the phone.

<p v-click>

But what if we wanted to compare **more than two conditions**?
</p>


<p v-click>

💭 Possible conditions:  
– Driving alone  
– With a passenger  
– On a cell phone  
– On a video call  

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Can I Use a *t* Test to Compare >2 Groups?

:: content ::

If you used a *t*-test for every possible combination, you’d run many tests!

- Driving alone vs. passenger  
- Driving alone vs. video call  
- Driving alone vs. cell phone  
- Passenger vs. video call 
- Passenger vs. cell phone  
- Video call vs. cell phone  

That’s **6 *t*-tests!**

<p v-click>

Is there any problem with that? 🤔  
Yes — it **increases the chance of a Type I error** (false positive).
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why You Can’t Do Many *t* Tests

:: content ::
- Each test carries a 5% chance (*α* = .05) of a **Type I error** — falsely rejecting the null.  
  - There is a 5% chance of concluding there is a difference when there really isn’t one.
  - There is a 95% chance of correctly *failing* to reject the null.
- The more *t*-tests you do, the higher your overall risk of error.  
- This problem is called **alpha inflation**.

<p v-click>

With one test → 95% chance of correctly retaining the null & 5% chance of a false positive


With two tests -> 95% chance of correctly retaining the null **twice** → $(0.95)^2 = 0.903$ → 10% chance of error


With three tests → 95% chance of correctly retaining the null **three** times → $(0.95)^3 = 0.857$ → 14% chance of error

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why You Can’t Do Many *t* Tests (continued)

:: content ::

<p v-click>

So if you did 6 *t*-tests (like in our example), you’d have **a 54% chance of a Type I error!**
</p>

<p v-click>
<div class="mt-4 bg-yellow-50 border-l-4 border-yellow-400 p-3 rounded">

<strong>Conclusion:</strong> Multiple t-tests inflate the error rate. We need a single test for 3+ groups.
</div>

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Solution: Using the *F* Statistic

:: content ::
When we want to compare **3 or more means**, we use the **F distribution** — the foundation of ANOVA.

<p v-click>

Like *z* and *t* tests, the *F* statistic is a **ratio**:

</p>

<p v-click>

$$z = \frac{\text{Difference Between Means}}{\text{Standard Error}}$$

</p>

<br>

<p v-click>

$$t = \frac{\text{Difference Between Means}}{\text{Standard Error}}$$

</p>

<br>


<p v-click>
$$
F = \frac{\text{Between-Groups Variance}}{\text{Within-Groups Variance}}
$$

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Solution: Using the *F* Statistic


:: content ::

$$
F = \frac{\text{Between-Groups Variance}}{\text{Within-Groups Variance}}
$$


<p v-click>

- The **numerator** captures how far apart the group means are.  
- The **denominator** captures how much variability exists within each group.
</p>

<p v-click>

The bigger the ratio, the more evidence that not all groups come from the same population.
</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Intuition for the *F* Statistic

:: left ::

- Think of the *F* statistic as an expansion of the *z* and *t* statistics:  
  - *z* → can do one thing 
  - *t* → can do a few things
  - *F* → can do lots of things
- Each builds on the same idea: comparing variability due to chance vs. systematic differences.

:: right ::

<div class="bg-blue-50 border-l-4 border-blue-400 p-3 rounded">

The *F* statistic captures both the **differences between groups** and the **noise within them**.
</div>

<p v-click>

*Which part of this equation captures systematic differences between groups?*

Whi*ch part captures "noise" within groups?*

$$
F = \frac{\text{Between-Groups Variance}}{\text{Within-Groups Variance}}
$$

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Characteristics of the *F* Distribution

:: content ::
- *F* is a **ratio of two variances** (between-groups / within-groups).  
  - Variances are based on sums of squares (SS), so *F* is always **positive**.  
- The *F* distribution is a *series* of distributions (like the *t* distribution)
  - There are **two values for degrees of freedom** in every *F* test:  
    - One for the numerator (*df₁* = between-groups)  
    - One for the denominator (*df₂* = within-groups)  

<p v-click>

Like *t*, the *F* distribution changes shape depending on the sample size and number of groups.
</p>

<p v-click>

To use *F*, your data must be on a **numeric (interval or ratio)** scale.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The *F* Table and Degrees of Freedom

:: content ::
- The *F* table expands the *t* table by adding **another dimension** for the number of groups.  
- There’s an *F* distribution for every combination of:  
  - Sample size (→ *df₁*, numerator)  
  - Number of groups (→ *df₂*, denominator)

<p v-click>

*F*(df₁, df₂) helps us decide whether group differences are larger than expected by chance.
</p>

<p v-click>

*In practice, most people don't use the *F* table directly — statistical software calculates the exact p-value for you!*

The important thing to understand is that your *p* value depends on ==both== degrees of freedom, which are determined by:
1. your sample size and 
2. your number of groups.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# ANOVA Overview

:: content ::
==An **ANOVA** (*Analysis of Variance*) compares **differences between 3+ groups using one test.**==

<p v-click>

#### One-way between-groups ANOVA 
- Hypothesis test used to compare means across **more than two independent groups**:
  - Groups are defined by a single independent variable (IV) with 3+ levels.
    - These levels are **categorical** (nominal/ordinal).
    - A between-groups ANOVA is used for a design where each participant appears in only one group.
  - The dependent variable (DV) is **numeric** (interval/ratio).

</p>

<p v-click>

Example: Comparing mean driving performance across four phone-use conditions.

</p>

<p v-click>

*Phone-use conditions: Categorical IV with 4 levels*

*Driving performance: Numeric DV*

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# ANOVA: What Are We Analyzing?

:: content ::
Even though the test is called an **analysis of variance**, what we’re really doing is comparing **means**.

<p v-click>

We ask:  
*Are the differences among group means larger than we would expect from random chance?*

</p>

<p v-click>

If the groups come from the same population, their means should be similar.  

If the means are *very different*, that suggests at least one group differs systematically.
</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# The Two Sources of Variability

:: left ::
### 1️⃣ Between-Groups Variance
- How far apart are the **group means**?  
- Captures **systematic differences** due to the independent variable.

### 2️⃣ Within-Groups Variance
- How spread out are scores **inside each group**?  
- Captures **unsystematic noise** — individual differences or measurement error.

:: right ::
<div class="bg-blue-50 border-l-4 border-blue-400 p-3 rounded">

When between-group variability ≫ within-group variability, the *F* ratio becomes large → **evidence against the null**.
</div>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# How Do We Compute Between vs. Within Variability?

:: content ::

ANOVA divides the **total variability** in a dataset into two parts:

$$
SS_\text{Total} = SS_\text{Between} + SS_\text{Within}
$$


<p v-click>

#### Recap: Sum of Squares (SS) Refresher

To calculate variance, we compute the **sum of squared deviations** from the mean.

1. Subtract the mean from each score.  
2. Square each deviation.  
3. Add them up.  

$$SS = \sum{(X - \bar{X})^2}$$

- This is the **Sum of Squares (SS)**.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# 1️⃣ Between-Groups Variability (*SS<sub>Between</sub>*) 

:: content ::
- Start with the **mean of each group** (*M₁, M₂, M₃, …*).  
- Compute how far each group mean is from the **grand mean** (*M<sub>G</sub>*, the mean of all scores).  
- Weight each squared deviation by the **group size** (*n*).  
- Add them up.  

$$
SS_\text{Between} = \sum n_i (M_i - M_G)^2
$$

This reflects the variability **explained by group membership**.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# 2️⃣ Within-Groups Variability (*SS<sub>Within</sub>*)


:: content ::

- For each group, measure how much each individual score deviates from its group mean.  
- Square those deviations and sum them across all groups.  

$$
SS_\text{Within} = \sum \sum (X_{ij} - M_i)^2
$$

This captures **unexplained variability** — random noise and individual differences.

<p v-click>

*Why are there ==two== summation symbols?*

- The inner Σ says: For a given group i, sum the squared deviations of each person’s score (j) from that group’s mean
- The outer Σ says: Now repeat that process for each group, and add them all up.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Converting Sums of Squares to the *F* Statistic

:: content ::

We then divide each sum of squares by its degrees of freedom to obtain **mean squares (MS):**

$$
MS_\text{Between} = \frac{SS_\text{Between}}{df_\text{Between}}, \quad
MS_\text{Within} = \frac{SS_\text{Within}}{df_\text{Within}}
$$

<p v-click>

Where:
- $df_\text{Between} = k - 1$ (k = number of groups)  
- $df_\text{Within} = N - k$ (N = total sample size)

</p>


<p v-click>
Finally, we compare the two:

$$
F = \frac{MS_\text{Between}}{MS_\text{Within}}
$$

</p>

<p v-click>

A large *F* value indicates that between-group variability is much greater than within-group variability → evidence against the null hypothesis.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Logic of the *F* Statistic

:: content ::
At its core, ANOVA is a **signal-to-noise ratio**:

$$
F = \frac{\text{Systematic variance (between groups)}}{\text{Random variance (within groups)}}
$$

- **Signal** → variability explained by your independent variable  
- **Noise** → variability due to chance  

<p v-click>

If *F* ≈ 1 → group differences are about what chance would produce.  
If *F* >> 1 → the manipulation explains meaningful variance.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Interpreting *F*

:: content ::
- *F* values can’t be negative.  
- The **larger the *F***, the stronger the evidence that not all group means are equal.  
- Whether an *F* is “large enough” depends on its **critical value** from the *F* distribution (*df₁*, *df₂*).

<p v-click>

If your observed *F* > critical *F*, you reject H₀ and conclude that ==at least one mean== differs from the others.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The F Statistic Visualized: Between-Group Variance

:: content ::

<img src="/images/lecture13/anova_mean_demo.png"  class="w-3/4 mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The F Statistic Visualized: Within-Group Variance

:: content ::

<img src="/images/lecture13/anova_var_demo.png"  class="w-3/4 mx-auto"/>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Setting Up the Hypotheses

:: left ::

**Null hypothesis (H₀):**  
All population means are equal.  
$$
\mu_1 = \mu_2 = \mu_3 = \dots
$$

**Research hypothesis (H₁):**  
At least one population mean differs.  

:: right ::

<div class="bg-green-50 border-l-4 border-green-400 p-3 rounded">

Unlike a *t*-test, ANOVA does not tell us *which* means differ —  
only that **not all of them are the same**.

</div>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why Use ANOVA Instead of Multiple *t* Tests?

:: content ::
- Keeps the **Type I error rate** at 5%.  
- Tests all group differences **in one analysis**.  
- Provides the foundation for **multi-factor and repeated-measures** designs.
  - We will talk about repeated-measures designs soon.

<p v-click>

ANOVA is the statistically correct, efficient way to ask:  
<br> 

==“Are these group means different enough that it’s unlikely to be chance?”==

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Assumptions of One-Way ANOVA

:: content ::
Every ANOVA relies on three key assumptions, which represent the ideal conditions for valid results:

1. **Random selection** of participants  
2. **Normality** — each group’s population is roughly normal  
3. **Homogeneity of variance** — groups have similar spread
  - ==Homoscedastic== populations are those that have the same variance.
  - ==Heteroscedastic== populations are those that have different variances.

<p v-click>

When these hold, *F* is robust and trustworthy.  
If they’re violated, be cautious in interpreting results, or may need to use non-parametric alternatives.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Example: One-Way ANOVA (Source Table)

:: content ::
Imagine we conduct a one-way ANOVA comparing driving performance across four driving conditions: 1. No phone, 2. Passenger, 3. Cell phone, and 4. Video call.

In total, we have 40 participants divided among the four groups (n = 10 per group).

The between-groups and within-groups sums of squares are:
| Source          | SS      | df  | MS       | F      |
|-----------------|---------|-----|----------|--------|
| Between Groups  | 450.0   |    |    |    |
| Within Groups   | 100.0  |  |     |        |
| **Total**       | 550.0  |  |          |        |

<p v-click>

**What should go in the DF column?**

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Example: One-Way ANOVA (Source Table)

:: content ::

The between-groups and within-groups sums of squares are:
| Source          | SS      | df  | MS       | F      |
|-----------------|---------|-----|----------|--------|
| Between Groups  | 450.0   | K-1 = 3   |    |    |
| Within Groups   | 100.0  | N-K = 36 |     |        |
| **Total**       | 550.0  | 39 |          |        |

<p v-click>

**What should go in the MS column?**
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Example: One-Way ANOVA (Source Table)

:: content ::

The between-groups and within-groups sums of squares are:
| Source          | SS      | df  | MS       | F      |
|-----------------|---------|-----|----------|--------|
| Between Groups  | 450.0   | K-1 = 3   | SS/df = 150.0   |    |
| Within Groups   | 100.0  | N-K = 36 |  SS/df = 2.78   |        |
| **Total**       | 550.0  | 39 |          |        |

<p v-click>

**What should go in the F column?**
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Example: One-Way ANOVA (Source Table)

:: content ::

The between-groups and within-groups sums of squares are:
| Source          | SS      | df  | MS       | F      |
|-----------------|---------|-----|----------|--------|
| Between Groups  | 450.0   | K-1 = 3   | SS/df = 150.0   | MS_Between / MS_Within = 54.0  |
| Within Groups   | 100.0  | N-K = 36 |  SS/df = 2.78   |        |
| **Total**       | 550.0  | 39 |          |        |

<p v-click>

**Final ANOVA result: F(3, 36) = 54.0**

*We need to look up the critical F value for (3, 36) df to determine significance, or use software to get the exact p-value.*

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Beyond Significance: Measuring Effect Size

:: content ::
A significant *F* tells us that not all group means are equal —  
but **how big** is that difference in practical terms?

<p v-click>

That’s where **effect size** comes in.  
For ANOVA, we most often report **η² (eta squared)** or **R²**. (In a one-way ANOVA, they are equivalent.)

$$
\eta^2 = \frac{SS_\text{Between}}{SS_\text{Total}}
$$

It represents the **proportion of total variance** in the dependent variable that is explained by the independent variable.
</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Understanding η² and R² Conceptually

:: left ::
- Think of *η²* like a “percentage of variance explained.”  
- *η² = .20* means 20 % of the variability in your data is accounted for by your experimental manipulation (group membership).  
- Larger *η²* → stronger effect.

:: right ::
<div class="bg-blue-50 border-l-4 border-blue-400 p-3 rounded">

🧠  Quick interpretation guide (Cohen, 1988):  
• Small ≈ .01 • Medium ≈ .06 • Large ≈ .14  

These cutoffs are rough — context matters.
</div>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Example: Reporting Effect Size

:: content ::
Imagine we find:  
> *F*(2, 36) = 5.47, *p* = .008, *η²* = .23  

That means **23 %** of the variance in scores is explained by our independent variable.

<p v-click>

Including effect sizes helps readers judge:  
- whether the difference is **meaningful**, not just statistically significant,  
- and whether findings might replicate with new samples.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# When *F* Is Significant: What’s Next?

:: content ::
- A significant ANOVA tells us that **at least one group differs**, but not *which* ones.

<p v-click>

- To find out *which* groups differ, we use **follow-up tests** called *post-hoc comparisons*.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why Not Just Run More *t*-Tests?

:: content ::
Because each extra *t*-test increases the risk of **Type I error** (false positives).  

<p v-click>

Post-hoc procedures control that risk by adjusting the critical value or significance threshold.
</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Planned vs. Post-Hoc Comparisons

:: left ::
**Planned (a priori)**  
- Decided *before* data collection  
- Test specific hypotheses  
- Fewer tests → no need for strong correction  

**Post-hoc**  
- Done *after* seeing results  
- Explore where the differences lie  
- Need corrections to keep α = .05 overall  

:: right ::
<div class="bg-green-50 border-l-4 border-green-400 p-3 rounded">

Think of post-hoc tests as “honest ways to peek under the hood” after finding a significant overall *F*.

In general, with post-hoc tests, we adjust the size of the effect needed to declare significance to control for multiple comparisons.

</div>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Common Post-Hoc Tests

:: content ::

| Test | Key Idea | Conservative? | Typical Use |
|------|-----------|---------------|--------------|
| **Scheffé** | Controls α for all possible contrasts | Most conservative | Exploratory analyses |
| **Tukey HSD** | Tests all pairwise mean comparisons equally | Moderate | Balanced designs |
| **Bonferroni** | Divides α by number of comparisons | Flexible | Small number of tests |

<p v-click>

All aim to protect against **false positives** while allowing fair comparisons among multiple groups.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Conceptual Takeaway

:: content ::
- **Scheffé:** “Play it safe” — harder to reach significance  
- **Tukey HSD:** “Middle ground” — good balance of safety and power  
- **Bonferroni:** “Divide and conquer” — simple, but can be overly strict when many tests  


<p v-click>

Different journals or software packages may default to different methods —  always report which you used.
</p>

<p v-click>

**Bonferroni example:** You run an ANOVA with 4 groups (6 pairwise comparisons) and find a significant effect. You now want to know *which* groups differ. To keep overall α = .05, each test must meet *p* < .0083 (0.05/6) to be significant.

</p>



---
layout: cover
color: indigo-light
---

# That’s all for today!
Tuesday: Exam 3 Review Session featuring lots of practice questions
