---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 15
exportFilename: ps211_fall2025_lecture15
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1  
### Lecture 15: One-Way Repeated-Measures ANOVA & Two-Way ANOVA

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates & Reminders

:: content ::
- ==Data Write-Up== due Monday (11/17) by 11:59pm.
- ==Homework 4== will be posted early next week (due Dec. 2).
   - Only your top 3 out of 4 homework grades will count toward your final course grade.
- ==Exam 3== went pretty well!
  - Median: 25/30
  - Everyone earned 2 bonus percentage points, which means the median is > 85%.
  - A few concepts are still challenging for people. 

<div class="mt-1 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-4 transform">
  Remember, you can use the grade calculator (pinned on Slack) to see how future assignments will affect your final grade!
</div>
</div>


---
layout: section
color: indigo-light
---

# Part 1: One-Way Repeated-Measures ANOVA (Within-Groups)

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# From Between-Groups to Repeated-Measures ANOVA

:: content ::

- Recall: The **one-way between-groups ANOVA** compares means from **independent samples**.

<p v-click>

- What if the **same participants** complete **multiple conditions**?

</p>

<p v-click>

- We use a **repeated-measures ANOVA**, also called a **within-groups ANOVA.**
</p>

<p v-click>

- Just like with *t*-tests, we have a between-groups and a within-groups version of ANOVA.

</p>
---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# When to Use a Repeated-Measures ANOVA

:: content ::
Use when:
- The **same participants** are measured across **three or more conditions.**
- There is **one independent variable (IV)** with 3+ levels.
- The dependent variable (DV) is **numeric** (interval or ratio).

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
In which of these scenarios would a Repeated-Measures ANOVA be appropriate?
</div>
</div>

1. Testing memory performance after 0, 1, and 2 cups of coffee with the same participants. 

2. Comparing test scores of students from three different schools.

3. Measuring reaction times of the same participants under three different lighting conditions.

4. Evaluating how number of hours of sleep per night relates to GPA. 


</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# When to Use a Repeated-Measures ANOVA

:: content ::
Use when:
- The **same participants** are measured across **three or more conditions.**
- There is **one independent variable (IV)** with 3+ levels.
- The dependent variable (DV) is **numeric** (interval or ratio).


<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
In which of these scenarios would a repeated-measures ANOVA be appropriate?
</div>
</div>

1. Testing memory performance after 0, 1, and 2 cups of coffee with the same participants. ✅

2. Comparing test scores of students from three different schools. ❌

3. Measuring reaction times of the same participants under three different lighting conditions. ✅

4. Evaluating how number of hours of sleep per night relates to GPA. ❌





---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Advantages of Repeated-Measures ANOVA

:: content ::
- **Accounts for individual differences** – the same people are in every condition.

- **Increases statistical power** – less error variance.

- **Fewer participants** needed.

<p v-click>

Essentially, every participant acts as their **own control group.**

</p>

<p v-click>

==**This should sound familiar from within-groups t-tests!**==

<img src="/images/lecture15/dejavu_meme.jpeg" class="w-1/3 mx-auto"/>


</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Disadvantages of Within-Groups Designs

:: content ::
- **Carryover** effects:
  - Once participants have experienced one condition, it may influence their behavior in subsequent conditions.
- **Order effects**:
    - Practice effects: Improvement due to familiarity with the task.
    - Fatigue effects: Decline in performance due to tiredness or boredom.
  - ==Counterbalancing== can help mitigate this issue, but it may not eliminate it entirely.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Within- vs. Between-Groups Designs: Practice

:: content ::

*You run an experiment where participants memorize a list of words after drinking 0, 1, or 2 cups of coffee. Participants complete all three conditions across three separate days. All participants show improvement over time, regardless of coffee amount.*

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
 Which disadvantage of within-groups designs does this illustrate?
</div>
</div>

A. This shows how individual differences can impact performance across conditions.

B. This shows how practice effects can impact performance.

C. This shows how fatigue effects can impact performance.

D. This shows that within-groups designs are typically underpowered.


</p>

<p v-click>

**Answer: B** – Participants improved over time due to practice, regardless of the coffee condition.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Within- vs. Between-Groups Designs: Practice

:: content ::

*You run an experiment where participants memorize a list of words after drinking 0, 1, or 2 cups of coffee. Participants complete all three conditions across three separate days. All participants show improvement over time, regardless of coffee amount.*


<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
 What is one way you could mitigate the influence of practice effects in your experimental design?
</div>
</div>

A. Increase your sample size to reduce the influence of practice effects.

B. Counterbalance the order of conditions across participants to ensure that the influence of practice equally affects all conditions.

C. Ask participants to promise not to practice between sessions.

D. All of the above.

</p>

<p v-click>

**Answer: B** – Counterbalancing helps distribute practice effects evenly across conditions, reducing their confounding influence.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Between- vs. Repeated-Measures ANOVA

:: content ::
- In both cases, we are still using the *F* ratio: Between-Groups Variance / Within-Groups Variance.
   - We still want to know whether the variability ==between== condition means is larger than the variability ==within== conditions.
- The key difference: **how we calculate the Within-Groups Variance.**

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Calculations in a Repeated-Measures ANOVA

:: content ::
- Remember, for between-groups ANOVA, we partition total variability into:
$$
SS_{Total} = SS_{Between} + SS_{Within}
$$

<p v-click>

- **SS<sub>Between</sub>:** variability due to condition means.  
- **SS<sub>Within</sub>:** variability due to random noise.

</p>

<p v-click>

Importantly, in a between-groups design, this ==random noise== includes all sources of variability within conditions, including  individual differences between participants.

</p>

<p v-click>

- The logic is similar to between-groups ANOVA, **but we add one more term:**

$$
SS_{Total} = SS_{Between} + SS_{Within} + SS_{Subjects}
$$

</p>

<p v-click>

- **SS<sub>Subjects</sub>:** variability due to stable individual differences between participants.
- **SS<sub>Within</sub>** now reflects variability due to random noise only, after removing variability due to individual differences.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Calculating the Subjects Sum of Squares

:: content ::
To calculate ==**SS<sub>Subjects</sub>**==:
1. Compute each participant’s overall mean across all conditions ($M_{participant}$).
2. For each participant, calculate the squared difference between their overall mean and the grand mean ($GM$).
3. Sum these squared differences across all $n$ participants.

<div class="mt-1 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-2 transform">

  Remember, the **grand mean** is the mean of all scores across all participants and conditions.
</div>
</div>

<p v-click>
In equation form:

$$
SS_{Subjects} = \sum_{1}^{n} ( M_{participant} - GM )^2
$$

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing Steps (Repeated-Measures ANOVA)

:: content ::
- **Step 1: Identify populations, distribution, and assumptions.**  
   - Numeric DV  
   - Normally distributed  
   - Homogeneity of variance  

- **Step 2: Determine null and alternative hypotheses.**  
   - H₀: μ₁ = μ₂ = μ₃  
   - H₁: At least one μ differs  

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing Steps (Repeated-Measures ANOVA)

:: content ::

- **Step 3: Determine comparison distribution.**  
   - *F* distribution with df<sub>Between</sub> and df<sub>Within</sub>.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Degrees of Freedom (df) for Repeated-Measures ANOVA

:: content ::
<p v-click>

- df<sub>Between</sub> = ==k − 1==, *where k = number of conditions*
   - when calculating variability between conditions, we lose one degree of freedom from our calculation of the overall mean.
</p>

<p v-click>

- df<sub>Subjects</sub> = ==n − 1==, *where n = number of subjects*
   - when calculating variability due to individual differences, we lose one degree of freedom from our calculation of the overall mean.
</p>

<p v-click>

- df<sub>Within</sub> = ==(k-1)*(n-1)==
   - when calculating variability within conditions, we lose (k-1) degrees of freedom for conditions and (n-1) degrees of freedom for subjects.
</p>

<p v-click>

- Total df = ==N − 1==, *where N = (n\*k), total number of observations (scores)*
   - when calculating total variability, we lose one degree of freedom from our calculation of the grand mean.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing Steps (Repeated-Measures ANOVA)

:: content ::
- **Step 4: Find critical value** using df<sub>Between</sub> and df<sub>Within</sub> 
    - From *F* table or software

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">

  Why do we often have *two* critical values for a *t* test but only one critical value for an *F* test?
</div>
</div>

</p>

<p v-click>

**Answer:** Because *t* tests can be one-tailed or two-tailed, while *F* tests are always one-tailed, because we are always testing whether the variance between groups is greater than the variance within groups.

</p>
---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing Steps (Repeated-Measures ANOVA)

:: content ::
- **Step 5: Compute F**:

$$
F = \frac{MS_{Between}}{MS_{Within}}
$$

Remember, for a repeated-measures ANOVA, we calculate MS<sub>Within</sub> after removing SS<sub>Subjects</sub>:

$$
MS_{Within} = \frac{SS_{Within}}{df_{Within}}
$$

<br>

$$SS_{Within} = SS_{Total} - SS_{Between} - SS_{Subjects}$$


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing Steps (Repeated-Measures ANOVA)

:: content ::
- **Step 6: Make a decision.**
   - If *F* calculated ≥ *F* critical, reject H₀.
   - If *F* calculated < *F* critical, fail to reject H₀.


---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Accounting for individual variance increases power

:: content ::
#### Example:
- Imagine BU asks students to rate their satisfaction (from 0 - 1) with three different dining halls.
- They ask 10 different students to rate three dining halls.
- They plot the means responses and include error bars that show +/- 1 SE from each mean:

<p v-click>
<img src="/images/lecture15/errorbars1.png" class="w-1/2 mx-auto"/>

</p>

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-red-100 border-2 border-red-300 rounded-lg shadow-md p-1 transform">
  Big error bars indicate lots of variability in the ratings!
</div>
</div>

</p>

---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Accounting for individual variance increases power

:: content ::
- However, some of this variability is due to individual differences among students.
- To account for this, we can subtract each student's overall mean rating from their dining hall ratings. This gives us each student's rating of each dining hall after accounting for individual differences.
- We can then re-compute the standard error of each mean rating and re-plot.

<p v-click>

<img src="/images/lecture15/errorbars2.png" class="w-1/2 mx-auto"/>

</p>

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-red-100 border-2 border-red-300 rounded-lg shadow-md p-1 transform">
  Now error bars reflect random error only -> "noise" that can't be explained by individual differences.
</div>
</div>

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Effect Size for Repeated-Measures ANOVA

:: content ::
Effect size is measured using **R² (or η²)**:

$$
η² = \frac{SS_{Between}}{SS_{Total} - SS_{Subjects}}
$$

This shows the **proportion of variance explained** by the IV after removing variance due to individual differences.

<p v-click>
Example interpretation: η² = .40 → 40% of variance in performance is explained by the condition.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Repeated-Measures ANOVA in R

:: content ::
Use the `aov()` function with a within-subjects design:

```r
# Example dataset
data <- data.frame(
  subject = rep(1:10, each = 3),
  condition = rep(c("A", "B", "C"), times = 10),
  score = c(5, 6, 7, 4, 5, 6, 6, 7, 8, 5, 6, 7, 7, 8, 9,
            6, 7, 8, 5, 6, 7, 8, 9, 10, 7, 8, 9)
)

# Run the repeated-measures ANOVA
anova_result <- aov(score ~ condition + Error(subject/condition), data = data)
summary(anova_result)
```

- The `Error(subject/condition)` term specifies the within-subjects design.
- This indicates that each `subject` experiences all levels of `condition`.

---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Next Steps After a Significant Repeated-Measures ANOVA

:: content ::
- A significant ANOVA indicates that at least one condition mean differs, but it doesn’t tell us which ones.
- Follow up with post-hoc tests (e.g., pairwise t-tests, Tukey's HSD) to explore specific group differences.
- Can use corrections (e.g., Bonferroni) to control for Type I error.

---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Recap: Repeated-Measures ANOVA

:: content ::
- A repeated-measures ANOVA is used when the **same participants** complete **3+ conditions.**
- Remember, the *F* statistic compares variability between condition means to variability within conditions.
- When the *same participants* complete all conditions, some of that within-condition variability can be attributed to individual differences.
   - Mathematically, accounts for **individual differences** by computing SS<sub>Subjects</sub> and subtracting that from SS<sub>Within</sub>.
- Increases **statistical power**: SS<sub>Within</sub> reflects only *random* error.



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

---
layout: section
color: indigo-light
---

# Part 2: Two-Way ANOVA (Factorial Designs)
What if we have **two** independent variables?

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why Use a Two-Way ANOVA?

:: content ::
A **Two-Way ANOVA** allows us to test **two independent variables simultaneously.**

Example: ⛷️ Do ski resorts exaggerate weekend snow reports?

<img src="/images/lecture15/interaction_barplot.png" class="w-1/2 mx-auto"/>


<p v-click>

IV₁ = Report Source (Resort vs. Weather Station)  
IV₂ = Day (Weekday vs. Weekend)  
DV = Inches of snow reported
</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---


:: title ::
# Why Use a Two-Way ANOVA?

:: left ::


With a two-way ANOVA, we can simultaneously test:  

<p v-click>

1️⃣ Main effect of Report Source: **Does the source of the report (Resort vs. Weather Station) affect the reported snow levels?**

<img src="/images/lecture15/source_barplot.png" class="w-1/2 mx-auto"/>

</p>

:: right ::


<p v-click>

2️⃣ Main effect of Day: **Do weekday vs. weekend reports differ in snow levels?**  

<img src="/images/lecture15/day_barplot.png" class="w-1/2 mx-auto"/>

</p>


<p v-click>

3️⃣ Interaction between Report Source × Day: **Does the effect of report source depend on whether it's a weekday or weekend?**

<img src="/images/lecture15/interaction_barplot.png" class="w-1/2 mx-auto"/>

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Structure of a Two-Way ANOVA

:: content ::
- A two-way ANOVA involves **two independent variables (IVs).**
- These IVs can each have **two or more levels.**

- In a **2 × 2 design**, there are two independent variables, each with two levels.

- Each unique combination = a **cell** in the design.

<p v-click>

| **Source** | **Weekday** | **Weekend** |
|---------|----------|----------|
| Resort Report | Mean₁ | Mean₂ |
| Weather Station | Mean₃ | Mean₄ |



- Each cell’s mean reflects one condition combination (e.g., Resort–Weekend).

</p>
<p v-click>

What would a ==2 x 3== design look like?

</p>

<p v-click>

| **Source** | **Weekday** | **Saturday** | **Sunday** |


</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What Does a Two-Way ANOVA Test?

:: content ::
A Two-Way ANOVA produces **three *F* statistics:**

1️⃣ *F₁*: Main effect of IV₁  
2️⃣ *F₂*: Main effect of IV₂  
3️⃣ *F₃*: Interaction between IV₁ × IV₂

<p v-click>

- Each *F* statistic tests a specific hypothesis about the effects of the independent variables on the dependent variable.
</p>

<p v-click>

- Each *F* statistic is computed similarly to a one-way ANOVA:
$$ F = \frac{MS_{Between}}{MS_{Within}} $$

</p>

<p v-click>

- This is because we are still computing the ratio of variability ==between== condition means (e.g., 'signal') to variability ==within== conditions (e.g., 'noise').

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Computing *F* statistics for Two-Way ANOVAs

:: content ::

- We compute separate $SS_{Between}$, $MS_{Between}$, $df$, and critical values for all of our effects of interest: 

   1️⃣ Main effect of IV₁ (e.g., Report Source) 

   2️⃣ Main effect of IV₂ (e.g., Day)  

   3️⃣ Interaction between IV₁ × IV₂ (e.g., Report Source × Day)

<br>


<p v-click>

- However, they all share the same $SS_{Within}$ and $MS_{Within}$, which reflect variability within "cells."
   - This is because the within-groups variability is the same regardless of which effect we are testing.
   - Remember, when calculating $SS_{Within}$, we are looking at variability within each cell (condition combination), summed across all cells.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Interpreting Main Effects vs. Interactions

:: content ::
- **Main Effect:** One IV influences the DV ==regardless== of the other.  

<img src="/images/lecture15/day_barplot.png" class="w-1/4 mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Interpreting Main Effects vs. Interactions

:: content ::

- **Interaction:** The effect of one IV ==changes depending on== the other IV.

<img src="/images/lecture15/interaction_barplot.png" class="w-1/3 mx-auto"/>

- For example: ⛷️ Ski resort exaggeration might only happen on **weekends**, not weekdays.

- This would be an example of an **interaction**.

- The effect of Source (Resort vs. Weather Station) depends on Day (Weekday vs. Weekend).


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Marginal Means in Two-Way ANOVA

:: content ::
- **Marginal means** are the means for each level of one IV, averaged across levels of the other IV.
- For example, in our ski resort example:
   - Marginal mean for Resort Report = Average of (Resort–Weekday + Resort–Weekend)
   - Marginal mean for Weather Station = Average of (Weather Station–Weekday + Weather Station–Weekend)
- We use marginal means to assess **main effects** in a two-way ANOVA.

### Means Table

| **Source**         | **Weekday** | **Weekend** | <span style="color:#7e57c2;">**Marginal Mean**</span> |
|--------------------|-------------|-------------|--------------------|
| **Resort Report**   | 8.2         | 15.3        | <span style="color:#7e57c2;">11.8</span> |
| **Weather Station** | 9.2         | 11.5        | <span style="color:#7e57c2;">10.8</span> |
| <span style="color:#4db6ac;">**Marginal Mean**</span> | <span style="color:#4db6ac;">8.7</span> | <span style="color:#4db6ac;">13.4</span> | — |

<style>
table {
  font-size: 0.9rem;
  width: 85%;
  margin: auto;
}
th, td {
  padding: 4px 6px;
  text-align: center;
}
</style>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Marginal Means in Two-Way ANOVA

:: content ::

### Means Table

| **Source**         | **Weekday** | **Weekend** | <span style="color:#7e57c2;">**Marginal Mean**</span> |
|--------------------|-------------|-------------|--------------------|
| **Resort Report**   | 8.2         | 15.3        | <span style="color:#7e57c2;">11.8</span> |
| **Weather Station** | 9.2         | 11.5        | <span style="color:#7e57c2;">10.8</span> |
| <span style="color:#4db6ac;">**Marginal Mean**</span> | <span style="color:#4db6ac;">8.7</span> | <span style="color:#4db6ac;">13.4</span> | — |

<style>
table {
  font-size: 0.9rem;
  width: 85%;
  margin: auto;
}
th, td {
  padding: 4px 6px;
  text-align: center;
}
</style>

- We can use these marginal means to assess main effects:
   - **Main Effect of Source:** Resort Report (11.8) vs. Weather Station (10.8)
   - **Main Effect of Day:** Weekday (8.7) vs. Weekend (13.4)

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Means and Interactions in Two-Way ANOVA

:: content ::

### Means Table

| **Source**         | <span style="color:#7e57c2;">**Weekday**</span> | <span style="color:#4db6ac;">**Weekend**</span> | **Marginal Mean** |
|--------------------|-------------|-------------|--------------------|
| **Resort Report**   | <span style="color:#7e57c2;">8.2</span> | <span style="color:#4db6ac;">15.3</span> | **11.8** |
| **Weather Station** | <span style="color:#7e57c2;">9.2</span> | <span style="color:#4db6ac;">11.5</span> | **10.8** |
| **Marginal Mean**   | **8.7** | **13.4** | — |

<style>
table {
  font-size: 0.9rem;
  width: 85%;
  margin: auto;
}
th, td {
  padding: 4px 6px;
  text-align: center;
}
</style>

<br> 

- To assess interactions, we look at the cell means directly:
   - Does the difference between Resort Report and Weather Station change from Weekday to Weekend?


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Understanding interactions in ANOVA

:: content ::

- An interaction occurs when the effect of one independent variable on the dependent variable depends on the level of the other independent variable.
- In our ski resort example, the effect of Report Source (Resort vs. Weather Station) on reported snow levels changes depending on whether it's a Weekday or Weekend.
- Often, it is difficult to understand interactions just from the output of statistical tests. 

   --> ==**Visualization**== is key!


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---
:: title ::

# Understanding interactions in ANOVA: Visualization

:: left ::

### Interaction Bar Graph
<br>

<img src="/images/lecture15/interaction_barplot.png" class="w-7/8 mx-auto"/>

:: right ::

### Interaction Boxplot
<br>

<img src="/images/lecture15/interaction_boxplot.png" class="w-7/8 mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Two-Way ANOVA: Interpreting statistical output

:: content ::

### Run Two-Way ANOVA in R

```r
#Run two-way ANOVA
anova_result <- aov(SnowReported ~ Source * Day, data = snow_data)
summary(anova_result)
```


<p v-click>

### Example Output:

```
            Df Sum Sq Mean Sq F value   Pr(>F)    
Source       1   5.93    5.93   4.836  0.05907 .  
Day          1  66.62   66.62  54.374 7.81e-05 ***
Source:Day   1  18.04   18.04  14.720  0.00497 ** 
Residuals    8   9.80    1.23  
```
</p>

<p v-click>

- There is one row for each main effect and one row for the interaction.
- Each row includes: Df, Sum Sq, Mean Sq, F value, and p-value (Pr(>F)).
- The Residuals row shows the within-groups variability. It is the "residual" or leftover variability after accounting for the effects of the IVs.

</p>


---
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Two-Way ANOVA: Interpreting statistical output

:: content ::

```
            Df Sum Sq Mean Sq F value   Pr(>F)    
Source       1   5.93    5.93   4.836  0.05907 .  
Day          1  66.62   66.62  54.374 7.81e-05 ***
Source:Day   1  18.04   18.04  14.720  0.00497 ** 
Residuals    8   9.80    1.23  
```


<p v-click>


<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  Which effects are statistically significant at α = .05?
</div>
</div>

</p>

<p v-click>

**Answer:** Day (p < .001) and Source:Day interaction (*p* = .00497) are significant. Source (*p* = .05907) is not significant at α = .05.

</p>

<p v-click>


<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  What is the interpretation of these results in words?
</div>
</div>

</p>

<p v-click>

**Answer:** The results suggest that the day of the week has a significant effect on reported snow levels, with weekends generally having higher reports. Additionally, the interaction between report source and day indicates that the difference between the two sources varies by day, with resorts exaggerating reports more on weekends compared to weekdays.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why use a two-way ANOVA?

:: content ::

- A two-way ANOVA allows us to compare:
   1. How levels from TWO independent variables affect the dependent variable
   2. How the combined (interaction) effects of those two independent variables affect the dependent variable
- A two-way ANOVA is a hypothesis test that includes:
   - Two nominal (or ordinal) independent variables
      - The number of levels of each IV doesn't matter
   - One numeric (interval or ratio) dependent variable

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why design a study with two IVs?

:: content ::

- It is often more efficient to evaluate more than one independent variable in a single study.
- It allows us to explore interactions between independent variables!
- Any ANOVA with two or more independent variables is called a **factorial ANOVA**.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What if one IV is within-groups and the other is between-groups?

:: content ::

- This is called a ==mixed-design ANOVA.== The calculations are more complex (and outside the scope of this course), but the logic is the same.

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  Which of the following studies would likely use a mixed-design ANOVA?
</div>
</div>

A. Testing how day of the week and report source affect snow reports.

B. Testing how students in different sections of PS 211 perform on exams 1, 2, and 3.

C. Testing how first-years vs. sophomores rate their satisfaction with three different dining halls.

D. All of the above.

</p>

<p v-click>

**Answer: D** – All of the above!


</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What if we have *lots* of independent variables?

:: content ::

- Multifactorial ANOVA can handle **more than two independent variables.**
- The logic is the same: we can test main effects for each IV and interactions between any combination of IVs.
- However, as the number of IVs increases, the complexity of the design and the required sample size also increase.

<p v-click>

- A three-way ANOVA would involve:
   - Three main effects (one for each IV)
   - Three two-way interactions (IV₁ × IV₂, IV₁ × IV₃, IV₂ × IV₃)
   - One three-way interaction (IV₁ × IV₂ × IV₃)
   - ==7== *F* statistics in total!
</p>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What if we have *lots* of independent variables?

:: content ::

<p v-click>

- A four-way ANOVA would involve:
   - Four main effects
   - Six two-way interactions
   - Four three-way interactions
   - One four-way interaction
   - ==15== *F* statistics in total!
</p>

<p v-click>

**Example:**
- A researcher may want to examine how teaching method, class size, time of day, and student class year affect student performance on exams.
- They would have one numeric dependent variable (exam performance) and four categorical independent variables (teaching method, class size, time of day, and class year).

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Two-Way ANOVA in Action: 

:: left ::
- In a 2012 study (Moss-Rascusin et al.), researchers investigated how applicant gender influenced science faculty members' evaluations of lab manager job applications.
- Faculty evaluated identical job applications labeled “John” or “Jennifer.”
- Researchers ran a two-way ANOVA to analyze how labeled gender (male vs. female) and faculty participant gender (here, male vs. female) influenced ratings of the applicants' competence. 

- **IV₁:** Applicant Gender
- **IV₂:** Faculty Gender
- **DV:** Competence Rating

:: right ::

<p v-click>

==**Finding:**==
- Both male and female faculty rated "John" as more competent than "Jennifer."

</p>

<p v-click>

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  How would you interpret this finding in terms of main effects and interactions?
</div>
</div>

A. There is a main effect of Applicant Gender.

B. There is a main effect of Faculty Gender.

C. There is an interaction between Applicant Gender and Faculty Gender.

</p>

<p v-click>

**Answer: A** – There is a main effect of Applicant Gender: both male and female faculty rated "John" as more competent than "Jennifer." There is no main effect of Faculty Gender, and no interaction

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Two-Way ANOVA in Action: Visualization Practice

:: content ::
- In a 2012 study (Moss-Rascusin et al.), researchers investigated how applicant gender influenced science faculty members' evaluations of lab manager job applications.

- Both male and female faculty rated "John" as more competent than "Jennifer."

<div class="mt-1 w-full flex justify-center">
<div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
  Which of the plots below best represents this finding?
</div>
</div>


<div class="flex justify-center items-start gap-4 mt-4">
  <img src="/images/lecture15/anova_interaction_A.png" class="w-1/3 rounded-lg shadow-md"/>
  <img src="/images/lecture15/anova_interaction_B.png" class="w-1/3 rounded-lg shadow-md"/>
  <img src="/images/lecture15/anova_interaction_C.png" class="w-1/3 rounded-lg shadow-md"/>
</div>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Two-Way ANOVA in Action: Visualization Practice

:: content ::


<div class="flex justify-center items-start gap-6 mt-6">

  <!-- Left plot (purple outline + label) -->
  <div class="flex flex-col items-center w-1/3">
    <img src="/images/lecture15/anova_interaction_A.png"
         class="h-64 w-auto object-contain rounded-lg shadow-md ring-4 ring-purple-400"/>
    <p class="mt-2 text-lg font-semibold" style="color:#7e57c2;">
      Main effect of faculty gender
    </p>
  </div>

  <!-- Middle plot (indigo outline + label) -->
  <div class="flex flex-col items-center w-1/3">
    <img src="/images/lecture15/anova_interaction_B.png"
         class="h-64 w-auto object-contain rounded-lg shadow-md ring-4 ring-indigo-400"/>
    <p class="mt-2 text-lg font-semibold" style="color:#3f51b5;">
      Main effect of applicant gender
    </p>
  </div>

  <!-- Right plot (teal outline + label) -->
  <div class="flex flex-col items-center w-1/3">
    <img src="/images/lecture15/anova_interaction_C.png"
         class="h-64 w-auto object-contain rounded-lg shadow-md ring-4 ring-teal-400"/>
    <p class="mt-2 text-lg font-semibold" style="color:#009688;">
     Faculty gender x applicant gender interaction
    </p>
  </div>

</div>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Reporting Two-Way ANOVA Results (APA Style)

:: content ::
When reporting:
- Mention the type of ANOVA (e.g., 2 × 2 between-groups)
- Include *F*, df, *p*, and η² for each main effect and interaction

Example:
> A 2 × 2 ANOVA revealed a significant main effect of applicant gender, *F*(1, 120) = 5.12, *p* = .026, *η²* = .04, on competence ratings, with male applicants rated more competent than female applicants. There was no main effect of faculty gender, nor was there an interaction between applicant gender and faculty gender (*ps* > .05).


---
layout: cover
color: indigo-light
---

# That’s all for today!  
Next class: Correlation & Regression