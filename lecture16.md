---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 16
exportFilename: ps211_fall2025_lecture16
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1  
### Lecture 16: Correlation

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates & Reminders

:: content ::
- The ==Data Write-up== was due yesterday.
  - We are going to grade them and post feedback by the end of the week.
  - We will accept late submissions through Friday. 
- ==Homework 4== has been posted. 
  - Due **Tuesday, Dec. 2** at 11:59 PM.
  - We are going to post answers on Wednesday, Dec. 3.

---
layout: section
color: indigo-light
---

# Correlation

---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Recap: Statistical Tests We've Covered So Far

:: content ::

| **Test** | **# of IVs** | **IV Type** | **# of Levels** | **DV Type** | **Use Case** |
|-----------|--------------|--------------|------------------|--------------|-----------------------|
| *z-test* | 0 | — | — | Numeric | <span style="color:#7e57c2;">Compare sample mean to population mean (known SD)</span> |
| *One-Sample t-test* | 0 | — | — | Numeric | <span style="color:#7e57c2;">Compare sample mean to population mean (unknown SD)</span> |
| *Independent t-test* | 1 | Categorical | 2 | Numeric | <span style="color:#7e57c2;">Compare two groups (e.g., School A vs. School B)</span> |
| *Paired t-test* | 1 | Categorical | 2 | Numeric | <span style="color:#7e57c2;">Compare same group before vs. after intervention or in two conditions</span> |
| *One-Way (Between-Groups) ANOVA* | 1 | Categorical | 3+ | Numeric | <span style="color:#7e57c2;">Compare 3+ groups (e.g., Drug A, B, C)</span> |
| *Repeated-Measures (Within-Subjects) ANOVA* | 1 | Categorical | 3+ | Numeric | <span style="color:#7e57c2;">Compare same participants across 3+ conditions</span> |

<style>
table {
  font-size: 0.9rem;
  width: 98%;
  margin: auto;
}
th, td {
  padding: 4px 6px;
}
</style>

<p v-click>


<div class="mt-1 w-full flex justify-center">
<div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-1 transform">

  But what if our IV is **numeric** (not categorical)?
</div>
</div>

</p>

---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Recap: Statistical Tests 

:: content ::

| **Test** | **# of IVs** | **IV Type** | **# of Levels** | **DV Type** | **Use Case** |
|-----------|--------------|--------------|------------------|--------------|-----------------------|
| *z-test* | 0 | — | — | Numeric | <span style="color:#7e57c2;">Compare sample mean to population mean (known SD)</span> |
| *One-Sample t-test* | 0 | — | — | Numeric | <span style="color:#7e57c2;">Compare sample mean to population mean (unknown SD)</span> |
| *Independent t-test* | 1 | Categorical | 2 | Numeric | <span style="color:#7e57c2;">Compare two groups (e.g., School A vs. School B)</span> |
| *Paired t-test* | 1 | Categorical | 2 | Numeric | <span style="color:#7e57c2;">Compare same group before vs. after intervention or in two conditions</span> |
| *One-Way (Between-Groups) ANOVA* | 1 | Categorical | 3+ | Numeric | <span style="color:#7e57c2;">Compare 3+ groups (e.g., Drug A, B, C)</span> |
| *Repeated-Measures (Within-Subjects) ANOVA* | 1 | Categorical | 3+ | Numeric | <span style="color:#7e57c2;">Compare same participants across 3+ conditions</span> |
| ***Correlation*** | **1** | **Numeric** | — | **Numeric** | <span style="color:#7e57c2;">**Examine the relation between two numeric variables**</span> |

<style>
table {
  font-size: 0.9rem;
  width: 98%;
  margin: auto;
}
th, td {
  padding: 4px 6px;
}
</style>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Defining Correlation

:: content ::
- A **correlation** is a systematic association (relation) between two variables.
- It reflects **covariation** (“co-relation”) — how two numeric variables change together.

<p v-click>

- As discussed earlier in the course, ==correlations do *not* tell us about causation!==
- We typically use correlations in **observational** (non-experimental) research designs.

</p>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Correlation vs. Causation

:: content ::
- **Correlation:** An association between two or more variables  
  - Variables are typically measured, not manipulated.  
  - Shows relations — but **not cause.**

<p v-click>

#### Advantages
- Some research questions **cannot be studied experimentally** (e.g., unethical to manipulate the amount of stress in children's early life environments).  
- Efficient way to study **naturally occurring variables.**

</p>

<p v-click>

#### Disadvantages
- **Confounding variables** can create false associations.  
- **Causality cannot be inferred** — we can’t tell which variable influences which.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Characteristics of Correlations

:: content ::
- Correlations are summarized by the **Pearson correlation coefficient** (*r*).  
- ==*r*== indicates both:
  - **Direction** (positive or negative) of the relationship.
    - Determined by the sign of *r* (+ or −).
  - **Strength** (magnitude) of the relationship.
    - Determined by the absolute value of *r* (ignoring sign).

<p v-click>

#### Interpreting *r* values:

- *r* ranges from −1 to +1.
- *r* = 0 → no linear relation
- Larger absolute *r* → stronger relation

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Assumptions of Pearson’s *r*

:: content ::
- Variables are **numeric**.
- The relation between two variables is **linear**. (Pearson’s *r* only captures linear relationships.)
- Scores have been **randomly sampled** from the population.
- The distributions from which the scores have been sampled are **approximately normal**.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Directions of Correlation

:: content ::
- **Positive correlation:**  
  When one variable increases, the other tends to **increase** too.  
  > Example: Infants who hear more words in the first year tend to have larger vocabularies at age 2 (*r* = .52).

<p v-click>

- **Negative correlation:**  
  When one variable increases, the other tends to **decrease**.  
  > Example: Students who cheat more on exams tend to have lower grades overall (*r* = −0.43).

</p>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Examples: Penguin dimensions

:: content ::
<img src="/images/lecture16/penguins.jpg" class="w-1/3 rounded-lg mx-auto"/>

<div class="flex justify-center items-start gap-4 mt-4">
  <img src="/images/lecture16/corr1.png" class="w-1/3 rounded-lg shadow-md"/>
  <img src="/images/lecture16/corr2.png" class="w-1/3 rounded-lg shadow-md"/>
  <img src="/images/lecture16/corr3.png" class="w-1/3 rounded-lg shadow-md"/>
</div>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Practice: Identify the Correlation Type

:: content ::
Which of the following would you expect to show a **negative correlation**?

A. Peoples' heights and weights

B. The number of hours people spend studying and their exam scores  

C. Distance people live from campus and their attendance in classes

D. Shoe size and GPA

<p v-click>

**Answer: C.** We would expect a negative correlation between distance from campus and class attendance — as distance increases, attendance tends to decrease.

</p>

<p v-click>

**A.** We would expect a *positive* correlation between height and weight — as height increases, weight tends to increase as well.

**B.** We would expect a *positive* correlation between the number of hours people spend studying and their exam scores — as study time increases, exam scores tend to increase as well.

**D.** We would expect *no correlation* between shoe size and GPA — these variables are unrelated.

</p>
---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Correlation Strength

:: content ::

- The **magnitude** of *r* (ignoring its sign) shows **strength**.  
- Larger absolute *r* → stronger linear relationship.

Cohen’s (1988) general guidelines:


<div class="mt-2 w-full flex justify-center">
<table class="text-sm border border-gray-300 rounded-lg shadow-md">
  <thead>
    <tr class="bg-indigo-100">
      <th>Strength</th>
      <th>|r| value</th>
      <th>Interpretation</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Small</td><td>.10</td><td>Weak relationship</td></tr>
    <tr><td>Medium</td><td>.30</td><td>Moderate relationship</td></tr>
    <tr><td>Large</td><td>.50</td><td>Strong relationship</td></tr>
  </tbody>
</table>
</div>

<p v-click>

In behavioral science, *r* values above .50 are **rare** — human behavior is noisy!
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Correlations are *Linear*

:: content ::

*What is the correlation between these two variables?*

<img src="/images/lecture16/nonlinear.png" class="w-1/3 rounded-lg mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Correlations measure *linear* relationships

:: content ::

*What is the correlation between these two variables?*

<img src="/images/lecture16/nonlinear_labeled.png" class="w-1/3 rounded-lg mx-auto"/>

<p v-click>

- There is *no* linear relationship here — the pattern is curved.

</p>

<p v-click>

- We would need to use a different method (e.g., nonlinear regression) to capture this curved relationship.

</p>

---
layout: section
color: indigo-light
---

# Part 2: Calculating and Interpreting *r*

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Pearson Correlation Coefficient (*r*)

:: content ::
- The Pearson correlation coefficient is the most common measure of correlations between two variables. 
- It quantifies the **linear relationship** between two numeric variables.

<p v-click>

$$
r = \frac{\sum(x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum(y_i - \bar{y})^2}}
$$

</p>

<p v-click>

Where:  
- *xᵢ*, *yᵢ* = individual scores  
- *x̄*, *ȳ* = means of X and Y
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Pearson Correlation Coefficient (*r*)

:: content ::

$$
r = \frac{\sum(x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum(y_i - \bar{y})^2}}
$$

<p v-click>

- Numerator = product of deviations from means (how X and Y move together)  
- Denominator = product of sums of squared deviations (standardizes the measure)
</p>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Pearson Correlation Coefficient (*r*): Numerator

:: content ::

### Understanding the numerator:

$$
\sum(x_i - \bar{x})(y_i - \bar{y})
$$

- For each pair of scores, calculate how far each score is from its mean.
- Multiply these deviations together.
- Sum these products across all pairs.


<p v-click>

- Positive products (both above or both below means) increase *r*.  
- Negative products (one above, one below) decrease *r*.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Pearson Correlation Coefficient (*r*): Demoninator

:: content ::

### Understanding the demoninator:

$$
\sqrt{\sum (x_i - \bar{x})^2 \sum(y_i - \bar{y})^2}
$$

- For each variable, calculate squared deviations from the mean.
- Sum these squared deviations.
- Multiply the sums for X and Y, then take the square root.


<p v-click>

- This gives us an overall measure of variability for both variables.
- This standardizes the correlation, ensuring *r* ranges from −1 to +1.
</p>

<p v-click>

- Like our other statistics, *r* can be understood as a ==**signal-to-noise ratio**==:  
  - Numerator = signal (covariation)  
  - Denominator = noise (total variability)

</p>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# From Scatterplots to *r*

:: content ::
- We can visualize relationships using a **scatterplot**.
  - Each point represents one participant.
  - The participant's score on variable X is on the x-axis; score on variable Y is on the y-axis.

- Scatterplots show:
  - Direction (positive / negative)  
  - Strength (tightness of clustering)

<p v-click>

Remember: correlation measures **linear** relationships only — curved patterns can have *r* ≈ 0 even if related.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Pearson Correlation Coefficient (*r*): Understanding visually

:: content ::

<img src="/images/lecture16/pearson_r_1.png" class="w-3/4 rounded-lg mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Pearson Correlation Coefficient (*r*): Understanding visually

:: content ::

<img src="/images/lecture16/pearson_r_2.png" class="w-3/4 rounded-lg mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Statistical Significance of *r*

:: content ::
- A significant *r* means the relationship between the two variables is **unlikely to be due to chance**.  
  - This means that the observed correlation in our sample likely reflects a true relation that exists in the population.

<p v-click>

- We can test the significance of *r* using the *t* statistic!
  - This is a little confusing because we have previously used the *t* statistic to compare means, but here we use it to test correlations.
  - This is a totally different test - the only similarity is that we are using the *t* distribution as our null distribution.
</p>

<p v-click>

For a correlation with sample size *N*, we compute:

$$
t = \frac{r\sqrt{N-2}}{\sqrt{1 - r^2}}
$$
</p>

- We then compare this *t* value to the critical value from the *t* distribution with *N − 2* degrees of freedom.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Statistical Significance of *r*

:: content ::
$$
t = \frac{r\sqrt{N-2}}{\sqrt{1 - r^2}}
$$

==**Don't worry about memorizing this formula or understanding where it comes from.**==

<br> 

<p v-click>

Key ideas:
- Larger absolute *r* → larger *t* → more likely to be significant.
- Larger *N* → larger *t* → more likely to be significant.
- Larger *N* → more degrees of freedom → smaller critical *t* → more likely to be significant.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Coefficient of Determination (*R²*)

:: content ::
- *R²* = proportion of shared variance between two variables.
- We discussed R² in the context of ANOVA - it can also be used with correlations, and in fact, is directly related to *r*.

$$
R^2 = r^2
$$

<p v-click>

- *R²* helps us understand how much of the variability in one variable is explained by the other.
- If the two variables are correlated, that means that we can account for some of the variance in one variable by the other variable. 
- *R²* ranges from 0 to 1.
- Larger *R²* → more shared variance → stronger relationship.
</p>

<p v-click>

**Example:**  
If *r* = 0.90, then *R²* = 0.81 → 81% of variance in one variable is explained by the other.

</p>

<p v-click>

The remaining 19 % is due to chance, measurement error, or other factors.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Partial Correlations

:: content ::
- A **partial correlation** shows how much of the relationship between two variables remains after removing the influence of a **third variable**.
- In other words, the correlation coefficient expresses the relationship between two variables, over and above their association with a third variable.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Partial Correlations

:: left ::

**Example:**  
- People who play more sports tend to live longer.  
- Some of that relationship may be due to things like smoking, income, or alcohol use.  
- When we statistically remove (control for) those variables, the correlation gets smaller.  
- But if we remove the effect of **education**, the correlation between sports and longevity is still significant.  
- This tells us that **sports and longevity are related above and beyond education** — that remaining relationship is a **partial correlation**.

:: right ::

<img src="/images/lecture16/partial_correlation.png" class="w-7/8 rounded-lg mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Outliers and Correlations

:: content ::
- Outliers can **inflate** or **deflate** *r* dramatically.

<p v-click>

<img src="/images/lecture16/outlier.png" class="w-2/3 rounded-lg mx-auto"/>

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Outliers and Correlations

:: content ::
- Outliers can **inflate** or **deflate** *r* dramatically.


<img src="/images/lecture16/outlier2.png" class="w-2/3 rounded-lg mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Defining Outliers

:: content ::
- An **outlier** is a data point that differs significantly from other observations.
- Outliers can arise from:
  - Measurement errors (e.g., data entry mistakes)
  - Natural variability (genuine extreme values)
  - Sampling issues (e.g., non-representative samples)
- There are multiple methods to identify outliers, including visual inspection and statistical tests.
  - It is always extremely important to ==visually inspect your data== before conducting analyses.



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Detecting Outliers with Statistical Tests

:: content ::
- Common methods include:
  - **Grubb’s Test:** Identifies a single outlier in a normally distributed dataset.
    - How far the suspected outlier is from the mean compared to the standard deviation.
  - **Dixon Q's Test:** Suitable for small sample sizes to detect a single outlier.
    - Compares the gap between the suspected outlier and its nearest neighbor to the range of the data.
  - **IQR Method:** Values beyond 1.5 × IQR from Q1 or Q3 are considered outliers.



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Outliers: What should you do?

:: content ::

### Should you drop outliers?

Drop if:
- The data point is clearly wrong (error, typo).
  
Keep them if:
- They reflect genuine variation or critical outcomes.


<p v-click>

### Other ways of dealing with outliers
- Some analysis methods are robust to outliers (e.g., Spearman’s rank correlation).
- Sometimes you can report results with and without outliers to show their impact.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Practice: Interpreting Correlations

:: content ::
Hill (1990) studied final exam grades in Sociology and found these correlations:

| Variable | *r* |
|-----------|----:|
| Overall GPA | .72 |
| Number of absences | −.51 |
| Hours spent studying | .31 |

Which variable shows the **strongest** relationship with exam grade?

A. Hours spent studying  
B. Number of absences  
C. Overall GPA

<p v-click>

**Answer: C.** Overall GPA (*r* = .72) has the strongest positive relationship with exam performance.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Practice: Direction & Causation

:: content ::
A study finds a correlation of *r* = −.45 between screen time and sleep quality.  
Which interpretation is most appropriate?

A. Screen time causes poor sleep.  

B. Poor sleep causes increased screen time.  

C. A third variable (e.g., stress) affects both screen time and sleep quality. 

D. There is a negative association between screen time and sleep quality.

<p v-click>

**Answer: D.** There is a negative association between screen time and sleep quality. We cannot infer causation from correlation alone.

</p>

---
layout: section
color: indigo-light
---

# Part 3: Correlations in R

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# R Practice: Computing Correlations

:: content ::

```r
# Sample data
df <- data.frame(
  study_hours = c(2, 4, 5, 6, 8, 10),
  exam_score  = c(55, 63, 68, 72, 85, 91)
)
```

# Compute Pearson correlation
```r
cor(df$study_hours, df$exam_score)
```

# Test significance
```r
cor.test(df$study_hours, df$exam_score)
```

# Visualize with ggplot2
```r
library(ggplot2)
ggplot(df, aes(x = study_hours, y = exam_score)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  theme_minimal()
```


---
layout: cover
color: indigo-light
---

# That’s all for today!  
Next class: Regression!
