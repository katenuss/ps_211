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
    - It will cover material from Lectures 10-13 (today). 
    - The format will be the same as Exam 1 (33 multiple choice questions).
    - A review sheet will be posted by the end of the day tomorrow. 
    - Because one-way ANOVA is new material, we will also post some optional practice problems (with solutions) for you to go through on your own.

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
| **Confidence interval (CI)** | Range of plausible values | 95% CI [0.12, 1.24] |
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
> *t*(28) = 3.20, *p* = .004, *d* = 0.79, 95% CI \[0.50, 4.80].

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
layout: cover
color: indigo-light
---

# That’s all for today!
