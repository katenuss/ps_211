---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 17
exportFilename: ps211_fall2025_lecture17
---

# PS 211: Introduction to Experimental Design  
## Fall 2025 · Section C1  
### Lecture 17: Regression

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates & Reminders

:: content ::
- ==Homework 4== has been posted and is due **Dec. 2.**
    - Remember, only your top 3 homework grades count.
- ==Data Write-up== grades have been posted. 
    - We also returned your write-ups with feedback.
    - Good job! 🎉
    - Please come to office hours if you have questions.
    - If you have feedback about how the assignment can be improved, please let me know.
        - Next year I will ask better questions on the pre-course survey. 
- **No class or office hours next week!** 
    - Happy Thanksgiving! 🦃


---
layout: section
color: indigo-light
---

# Part 1: What is Regression?

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What is Regression?

:: content ::

<p v-click>

<div class="mt-0 w-full flex justify-center">
<div class="bg-blue-100 border-2 border-blue-300 rounded-lg shadow-md p-2 transform">

  Regression builds directly on correlation — today we move from *describing* relationships to *predicting* outcomes.
</div>
</div>

</p>

<p v-click>

- While correlation *describes* a relationship, regression quantifies how much change to expect in one variable given a change in another.

- This lets us use one variable to **predict** another.
</p>

<p v-click>

- **Correlation answers:**  
  “Are X and Y related?”

- **Regression answers:**  
  “How much does Y change when X changes?”

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Regression vs. Correlation

:: content ::

- Imagine we have data about ice cream sales per month (in dollars) and the number of shark attacks per month.

<p v-click>

- **Correlation** can tell us that ice cream sales and shark attacks are related (r = .7).

</p>

<p v-click>

- But what if we want to **predict** shark attacks based on ice cream sales? For example, if monthly ice cream sales are $5000, how many shark attacks should we expect?

</p>

<p v-click>

- **Regression** allows us to make this prediction by quantifying the relationship between ice cream sales and shark attacks.

</p>




---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Regression Does Not Tell Us About Causation!

:: content ::
- Even though regression predicts, it **cannot** establish causality.
- Why?
  - Predictors are **not manipulated**.
  - Confounds still exist.
  - Observational data is **not** experimental data.

<p v-click>

**Key idea:**  
Regression tells us how we should expect a variable to change *if a predictor changes*, not *why* the change occurs.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Regression Variables

:: content ::
In regression, we use **new terms** instead of IV and DV:

- **Predictor variable** (X):  
  The variable we use to make our prediction

- **Outcome variable** (Y):  
  The variable we want to predict

<p v-click>

Previously, we have used “independent” and “dependent” variable labels. But we have used these terms to describe **experiments** in which our independent variable was manipulated (e.g., condition assignment).

</p>

<p v-click>

In regression, we are often working with **observational data** where no variables are manipulated. Thus, we use the terms **predictor** and **outcome** to avoid implying causality.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What is Regression Used For?

:: content ::
Regression is used in almost every field:

- Content-recommendation algorithms
- Dating apps
- Economic forecasting
- Public health forecasting
- Risk assessment tools (e.g., recidivism)
- Investment behavior
- Etc.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Regression in Psychology & Neuroscience

:: left ::

<p v-click>

In ==psychology:==  
Regression helps researchers understand how different variables **predict** behaviors and outcomes.

</p>

<p v-click>

<img src="/images/lecture17/regression_example1.jpg" class="w-3/5  rounded-lg mx-auto"/>

<small>*A regression model revealed that age predicts whether people are likely to choose options that are more uncertain. (Nussenbaum et al., 2023)*</small>

</p>

:: right ::

<p v-click>

In ==neuroscience:==  
Regression helps researchers understand how different variables **predict** brain activity and how brain activity **predicts** behavior.

<p v-click>


<img src="/images/lecture17/regression_example2.jpg" class="w-3/5 rounded-lg mx-auto"/>

<small>*A regression model revealed that age predicts how the prefrontal cortex (PFC) responds to high- vs. low-value information during memory encoding. (Nussenbaum & Hartley, 2021)*</small>

</p>

</p>
---
layout: section
color: indigo-light
---

# Part 2: Simple Linear Regression

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Simple Linear Regression

:: content ::
Simple Linear Regression (SLR):
- Used to **predict an outcome** (Y) based on **one predictor** (X).
- We find the **line of best fit** through the data points.

<p v-click>

$$\hat{Y} = bX + a$$

- **b** = slope  
- **a** = intercept  
- **Ŷ** = predicted outcome value  

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Understanding the Slope and Intercept

:: content ::

- The **slope (b)** tells us:
 ==How much Y is expected to change when X increases by 1 unit.==

<p v-click>

- If **b > 0** → higher X predicts higher Y (positive relationship)  
- If **b < 0** → higher X predicts lower Y (negative relationship)  
- If **b = 0** → X does not predict Y

</p>

<p v-click>

- The **intercept (a)** tells us:
 ==The predicted value of Y when X = 0.==

</p>

<p v-click>

- Sometimes X = 0 is not meaningful (e.g., GPA = 0, height = 0) --> remember interval scales!
  - In those cases, the **intercept is still needed mathematically**, but we interpret it cautiously.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What Does the Regression Line Represent?

:: content ::

- The regression line is the **prediction rule** for Y based on X.

<p v-click>

- It represents our **best guess** for the average value of Y at each level of X.

</p>

<p v-click>

- Example:
    - A therapist wants to predict their clients’ depression scores based on stressful life events.
    - The therapist counts the number of stressful life events for every client in the past 2 years and their current depression scores.
    - The therapist finds that the best fitting regression line has a slope of 2 and an intercept of 10.
    - This means that for each additional stressful life event, the therapist predicts the depression score to increase by 2 points, starting from a baseline of 10 when there are no stressful life events.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Finding the Regression Line: Ordinary Least Squares (OLS)

:: content ::

**Ordinary Least Squares (OLS)** is a common method used to find the **best-fitting line** in simple regression.

It finds the line that **minimizes the total squared prediction error**:

$$
\text{SSE} = \sum (Y - \hat{Y})^2
$$

where:
- **SSE** = Sum of Squared Errors
- **Y** = Actual outcome values
- **Ŷ** = Predicted outcome values from the regression line

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Finding the Regression Line: Ordinary Least Squares (OLS)

:: content ::

<img src="/images/lecture17/error.png" class="w-2/3 rounded-lg mx-auto"/>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Finding the Regression Line: Ordinary Least Squares (OLS)

:: content ::

$$
\text{SSE} = \sum (Y - \hat{Y})^2
$$

<p v-click>

### Why squared errors?
- Prevents positive and negative errors from canceling.
- Penalizes **large errors** more than small ones.
- Makes math tractable and guarantees a unique best line.


</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# OLS: Practice

:: content ::

**Which of the following describes (in words) the best-fitting regression line found using OLS?**

A. The line that has an equal number of points above and below it.

B. The line that minimizes the sum of squared deviations between actual and predicted Y values.

C. The line that best predicts the **mean** of Y. 

D. The line with the **largest** slope.

<p v-click>

**Answer: B.**  
OLS finds the line with the **smallest sum of squared errors (SSE)**, which is the sum of squared deviations between actual and predicted Y values.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Error in Prediction

:: content ::

- Regression predictions are **not perfect**.
- There will always be some error in our predictions.
- These errors can come from:
    - **Unexplained variance** in the data (i.e., factors not included in the model)
    - **Random noise** in measurements
    - **Individual differences** among subjects

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Error in Prediction

:: content ::

- The amount of error around the line of best fit can be quantified.
- The ==standard error of the estimate== describes how far away (on average) the data points are from the line of best fit.

<p v-click>

- Computed as:
$$SE_{estimate} = \sqrt{\frac{SSE}{df}}
$$

Where:
- **SSE** = Sum of Squared Errors (from OLS)
- **df** = degrees of freedom
- For simple regression, **df = n - 2** (n = number of data points)

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Error in Prediction

:: content ::

<img src="/images/lecture17/regression_standard_error.png" class="w-2/3 rounded-lg mx-auto"/>

<p v-click>

**Question:** How will increasing the number of data points (n) affect the standard error of the estimate?

</p>

<p v-click>

**Answer:** Increasing the number of data points (n) will generally **decrease** the standard error of the estimate. This is because a larger sample size provides more information about the population, leading to more accurate estimates of the regression parameters.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Proportionate Reduction in Error (PRE)

:: content ::
- PRE quantifies how much more accurate our predictions become when using regression versus simply using the **mean** of Y.
- It is calculated as:

$$PRE = \frac{SSE_{mean} - SSE_{regression}}{SSE_{mean}}$$


<p v-click>

This is the same as our earlier definition of R²: Variance explained by the regression model!

$$PRE = R^2$$

This is also called the **coefficient of determination**.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Proportionate Reduction in Error (PRE)

:: content ::


Interpreting R²:  
- **R² = 0** → regression does not improve prediction  
- **R² = 1** → perfect prediction  
- **R² = .40** → 40% of variance explained


<img src="/images/lecture17/pre.png" class="w-2/3 rounded-lg mx-auto"/>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Proportionate Reduction in Error (PRE)

:: content ::


<img src="/images/lecture17/pre2.png" class="w-2/3 rounded-lg mx-auto"/>


<img src="/images/lecture17/pre3.png" class="w-2/3 rounded-lg mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Proportionate Reduction in Error (PRE)

:: content ::

$$PRE = \frac{SSE_{mean} - SSE_{regression}}{SSE_{mean}}$$


<p v-click>

This is very similar to the formula for R² or $\eta^2$ in ANOVA:

$$R^2 = \frac{SS_{between}}{SS_{total}}$$

</p>

<br> 

<p v-click>

Our numerators reflect the ==amount of variance explained by the model==, and our denominators reflect the ==total variance in the outcome variable==.

</p>

<p v-click>

- Thus, R² in regression and $\eta^2$ in ANOVA both quantify the **proportion of variance explained** by the model.
- They are measures of **effect size**.
</p>





---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# R² and Significance Testing

:: content ::

- **R²** tells us how much variance in Y is explained by the regression model.  
  → It is an **effect size**.

<p v-click>

- We can also ask: **Is this R² likely to be > 0 in the population, or could it be due to chance?**  
  - In simple regression, this is equivalent to testing whether the **slope = 0** (or *r* = 0).  
  - Like with an ANOVA, we can use an **F-test** to determine whether the overall regression model explains a significant amount of variance in Y.
  - We use an ***F*-test** for the overall model.
  - We use a *t* test for the slope.
</p>



<p v-click>

- Remember, our test statistic values depend on both effect size and sample size.  
  - With a large enough sample, even a small R² can be statistically significant.  

</p>




---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Unstandardized Coefficients

:: content ::
- Regression coefficients can be reported in **unstandardized** or **standardized** form.
- ==Unstandardized coefficients== are reported in the **original units** of the variables.

**Unstandardized slope (b)**  
- Interpreted in **raw units**  
- Example: “For each additional stressful event, depression scores increase by 3.2 points.”

**Intercept (a)**  
- Predicted Y when X = 0 (may or may not be meaningful)

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Standardized Coefficients

:: content ::
- Standardized coefficients are reported in **standard deviation units**.
- Variables are standardized (z-scored) before running the regression.

**Standardized slope (β)**  
- Interpreted in **standard deviation units**  
- Example: “For each additional standard deviation increase in stressful events, depression scores increase by 0.45 standard deviations.”

**Intercept (β₀)**  
- Predicted Y when X is at its mean (i.e., when standardized X = 0)


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Unstandardized vs. Standardized Coefficients

:: left ::
### Unstandardized Coefficients

#### Advantages
- Easy to interpret in real-world terms
- Useful for practical applications

#### Disadvantages
- Hard to compare across different scales

:: right ::

### Standardized Coefficients
#### Advantages
- Easy to compare across different predictors
- Useful for understanding relative importance

#### Disadvantages
- Harder to interpret in real-world terms


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Example: Unstandardized vs. Standardized Coefficients

:: content ::
Imagine you are predicting house prices based on square footage and number of bedrooms.

- **Unstandardized coefficients:**  
  - Slope ($b$) for square footage = 150 (each additional square foot increases price by $150)  
  - Slope ($b$) for number of bedrooms = 20,000 (each additional bedroom increases price by $20,000)

<p v-click>

**Which predictor has a larger impact on price?**

</p>

<p v-click>

**Answer:** It depends on the scale of the predictors. Square footage is measured in hundreds or thousands, while number of bedrooms is a small integer. Thus, we cannot directly compare their unstandardized coefficients.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Example: Unstandardized vs. Standardized Coefficients

:: content ::
Imagine you are predicting house prices based on square footage and number of bedrooms.


<p v-click>

- **Standardized coefficients:**  
  - Slope (β) for square footage = 0.6  
  - Slope (β) for number of bedrooms = 0.4

</p>

<p v-click>
    
**Now, which predictor has a larger impact on price?**

</p>

<p v-click>

**Answer:** Square footage has a larger impact on price, as indicated by its higher standardized coefficient (β = 0.6 vs. β = 0.4).

</p>


---
layout: section
color: indigo-light
---

# Part 3: Multiple Regression: Testing multiple predictors

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Multiple Regression

:: content ::

Multiple regression predicts an outcome using **2+ predictors**:


$$\hat{Y} = b_1X_1 + b_2X_2 + \dots + a$$

Examples:
- Predict GPA from hours studied + attendance  
- Predict depression from stress + sleep + social support

<p v-click>

### Key idea:
Each slope (**b₁**, **b₂**, …) represents the relationship between that predictor and Y **holding all other predictors constant**.

This makes regression different from simple correlations.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Multiple Predictors

:: content ::

Imagine predicting Y from **two** predictors: X₁ and X₂.

Each predictor explains a **different slice of variance**.


<p v-click>

### Why use multiple predictors?
- Increases accuracy  
- Reduces omitted-variable bias  
- Helps control for confounds  

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Multiple Predictors

:: content ::

*You want to understand how stress and sleep relate to depression.*
- You first run a simple linear regression predicting depression from sleep alone. You find that sleep significantly predicts depression (b = -2, p < .01).
- However, you then run a ==multiple regression== including both stress and sleep as predictors. 
    - Here, you find that stress significantly predicts depression (b = 3, p < .001), but sleep no longer significantly predicts depression (b = -0.5, p = .15).

**What do these two findings suggest?**

A. Sleep is not related to depression.  

B. Stress predicts sleep.  

C. Stress explains some of the same variance in depression as sleep.  

D. Stress and sleep are unrelated.

<p v-click>

**Answer: C.**  If including stress in the model reduces the effect of sleep on depression, it suggests that stress and sleep share some variance in predicting depression.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Interaction Terms in Regression

:: content ::

- An **interaction** occurs when the effect of one predictor **depends on** the level of another predictor.

- In other words:

    - ==The relationship between X₁ and Y changes depending on X₂.==

<p v-click>

- This is the same as in ANOVA, where the effect of one IV depends on the level of another IV.

</p>

<p v-click>

**Example:**  The effect of stress on depression may depend on social support.  
- High social support may buffer the negative effect of stress on depression.

</p>

<br> 

<p v-click>

*To test for interactions in regression, we include an **interaction term** in the model:*

$$\hat{Y} = b_1X_1 + b_2X_2 + b_3(X_1 \times X_2) + a$$
</p>



---
layout: section
color: indigo-light
---

# Part 4: Regression in R

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Simple Linear Regression in R

:: content ::



```r
# Fit regression model
model <- lm(depression ~ stress, data = df)
summary(model)
```

```r
Call:
lm(formula = depression ~ stress, data = df)

Residuals:
       1        2        3        4        5        6 
-1.80000 -1.00000 -0.20000  2.60000  0.40000 -0.00000 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)   7.7714     1.1665   6.662  0.00117 ** 
stress        2.8571     0.2878   9.928  0.00020 ***
---
Signif. codes:  
0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.897 on 4 degrees of freedom
Multiple R-squared:  0.961,    
Adjusted R-squared:  0.951 
F-statistic: 98.57 on 1 and 4 DF,  p-value: 0.000195
```


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Simple Linear Regression in R

:: content ::

```r

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)   7.7714     1.1665   6.662  0.00117 ** 
stress        2.8571     0.2878   9.928  0.00020 ***
---
Signif. codes:  
0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.897 on 4 degrees of freedom
Multiple R-squared:  0.961,    
Adjusted R-squared:  0.951 
F-statistic: 98.57 on 1 and 4 DF,  p-value: 0.000195
```

<p v-click>

- The slope for stress is 2.8571, meaning that for each additional unit increase in stress, depression scores are predicted to increase by approximately 2.86 points.
- The R² value is 0.961, indicating that approximately 96.1% of the variance in depression scores is explained by stress.
- The p-value for the stress predictor is 0.00020, indicating that the relationship between stress and depression is statistically significant.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Multiple Regression in R

:: content ::


```r
Call:
lm(formula = depression ~ stress + sleep + social_support, data = df)
Residuals:
       1        2        3        4        5        6 
-1.20000 -0.80000  0.40000  1.60000  0.20000 -0.20000
Coefficients:
                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)      5.1234     1.2345   4.150  0.00567 ** 
stress           2.4567     0.3456   7.112  0.00045 ***
sleep           -0.9876     0.4567  -2.163  0.07543 .
social_support    1.2345     0.5678   2.173  0.06543 .
---
Signif. codes:  
0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1      
Residual standard error: 1.567 on 3 degrees of freedom
Multiple R-squared:  0.978,    
Adjusted R-squared:  0.962 
F-statistic: 57.89 on 3 and 3 DF,  p-value: 0.000123
```

<p v-click>

**Which predictor has the largest impact on depression?**

</p>

<p v-click>

**Answer:** Stress has the largest impact on depression, as indicated by its highest t-value (7.112) and lowest p-value (0.00045) among the predictors.

</p>

---
layout: top-title
color: indigo-light
align: lt

---

:: title ::

# Recap: Regression

:: content ::

<p v-click>

- Regression ==predicts== an outcome variable (Y) based on one or more predictor variables (X).

</p>

<p v-click>

- We find the best-fitting line using **Ordinary Least Squares (OLS)**, which minimizes the sum of squared errors between our predictions and actual values.

</p>

<p v-click>

- Simple linear regression uses one predictor, while multiple regression uses two or more predictors.

</p>

<p v-click>

- Regression coefficients can be ==unstandardized (b) or standardized (β)==.

</p>

<p v-click>

- R² quantifies the proportion of variance in Y explained by the model.

</p>

<p v-click>

- We test the significance of individual predictors with *t*-tests and the overall model with an *F*-test.

</p>

---
layout: top-title
color: indigo-light
align: lt

---

:: title ::

# Regression: Practice Questions

:: content ::

<p v-click>

*A researcher uses hours studied (X) to predict final exam score (Y). The regression slope is b = 4.2, p < .01.*

**What does this result mean in practical terms?**

A. Students who study score exactly 4.2 points higher on their exam relative to students who do not study.

B. For each extra hour studied, exam scores increase on average by 4.2 points.

C. For each extra hour studied, exam scores increase by 4.2%.

D. Students who study more tend to perform worse.

</p>

<p v-click>

**Answer: B.**  
The slope indicates that for each additional hour studied, the predicted exam score increases by 4.2 points on average.

</p>

---
layout: top-title
color: indigo-light
align: lt

---

:: title ::

# Regression: Practice Questions

:: content ::

*The best-fitting regression line predicting stress level (Y) from hours of sleep (X) is:*

$$\hat{Y} = 22 - 1.5X$$

**What does the intercept (22) represent?**

A. Predicted stress level when sleep = 0 hours

B. Average stress level in the sample

C. Minimum stress score possible

<p v-click>

**Answer: A.**  
The intercept represents the predicted stress level when the predictor (hours of sleep) is equal to 0.
</p>

<p v-click>

**How should we interpret this intercept in practical terms?**


</p>

<p v-click>

Since 0 hours of sleep is not a realistic scenario, the intercept may not have a meaningful interpretation in this context. It is primarily a mathematical necessity for the regression equation.

</p>

---
layout: top-title
color: indigo-light
align: lt

---

:: title ::

# Regression: Practice Questions

:: content ::
A study predicts job performance from years of experience. The model yields R² = .32.

**Which is the most accurate interpretation of this R² value?**

A. Experience causes 32% better job performance.

B. Experience explains 32% of the variance in performance.

C. 32% of employees are high performers.

D. Performance can be predicted with 32% accuracy.

<p v-click>

**Answer: B.**  
R² indicates that 32% of the variance in job performance is explained by years of experience
</p>

---
layout: top-title
color: indigo-light
align: lt

---

:: title ::

# Regression: Practice Questions

:: content ::
A study predicts college GPA using SAT score (X₁) and high school GPA (X₂).

When SAT score is used alone, it significantly predicts college GPA (b = 0.03, p < .01). When both SAT score and high school GPA are included as predictors in the model, the slope for SAT becomes non-significant.

**What is the best interpretation of this result?**

A. SAT does not predict college GPA at all.

B. SAT only predicts GPA for high-performing students.

C. SAT and high school GPA explain overlapping variance.

D. High school GPA causes SAT performance.

<p v-click>

**Answer: C.**

Including high school GPA in the model accounts for some of the same variance in college GPA that SAT score explains, leading to a non-significant slope for SAT.
</p>

---
layout: top-title
color: indigo-light
align: lt

---

:: title ::

# Regression: Practice Questions

:: content ::

A regression predicts happiness from daily exercise duration. The slope is $b = 1.4, p = .28.$

**Which conclusion is correct?**

A. Exercise has no effect on happiness.

B. We failed to find evidence that exercise predicts happiness.

C. Exercise decreases happiness.

D. The effect size is zero.

<p v-click>

**Answer: B.**  
A non-significant p-value indicates that we did not find evidence that exercise duration predicts happiness in this sample. It does not prove that there is no effect in the population.
</p>

---
layout: cover
color: indigo-light
---

# That’s all for today!  
Enjoy Thanksgiving!  🦃


