---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 6
exportFilename: ps211_fall2025_lecture6
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1
### Lecture 6: The Normal Curve, Standardization, and Z Scores

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and reminders

:: content ::
- ==Homework 1== has been graded.
- We will post answers and grades tomorrow morning.
- We will not be returning individual homeworks, so if you would like to see or go over what you got wrong, please come to office hours.
- We will **not** be responding to individual questions about homework grades via Slack.
- For the most part, people did pretty well (~91 average). 
- We graded very leniently, so even if you did well, please review the answers to make sure you understand everything.
- Please bring your questions to the review session on Tuesday.
- I posted a review sheet for ==Exam 1== on Slack and the course website.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Variance

:: content ::

**Why do we care about variance and standard deviations?**

- Variance and standard deviations tell us how **spread out** scores are around the mean.
- They are used in many statistical tests (e.g., t-tests, ANOVA).
- They are also useful in the real world!


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Variance in the real world

:: content ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    Imagine you have the choice between two summer jobs: You can be a lifeguard or you can be a tour guide. Both jobs pay, on average, $15/hour. However, the lifeguard job has a standard deviation of $1/hour, while the tour guide job has a standard deviation of $10/hour. Which job would you choose? Why?
  </div>
</div>


<p v-click>

<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    Imagine that you are a boating instructor and you need to order lifejackets for a group of 100 people. You know their average weight is 150 lbs. The options for lifejacket sizes range from XXS to XXL, which correspond to different weights. How would knowing the standard deviation of their weights help you decide how many of each lifejacket size to order?
  </div>
</div>

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Variance in the real world

:: content ::
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
  Now imagine that you need to estimate the standard deviation of the weights of the 100 people. You decide to randomly poll 10 of the 100 and ask their weights. How would you use the weights of the 10 people to estimate the standard deviation of the weights of all 100 people?
  </div>
</div>

<p v-click>

**Answer:** Calculate the standard deviation of the 10 weights (your sample) and use that as an estimate of the standard deviation of all 100 weights (your population).

</p>

<p v-click>

**Let's do it:** 
Here are your sample weights (in lbs): $120, 130, 140, 150, 160, 170, 180, 190, 200, 210$

</p>

<p v-click>

**Step 1:** Calculate the mean of the weights.

$M = (120 + 130 + 140 + 150 + 160 + 170 + 180 + 190 + 200 + 210) / 10 = 165$

</p>

<p v-click>

**Step 2:** Calculate the sum of squared deviations from the mean.
$$ \sum (X_i - M)^2 = (120-165)^2 + (130-165)^2 + (140-165)^2 ...  + (210-165)^2 = 8250 $$

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Variance in the real world (continued)


:: content ::

<p v-click>

**Step 3:** Calculate the *sample* variance.
$$ Variance = \frac{\sum (X_i - M)^2}{n-1} = \frac{8250}{10-1} = 916.67 $$
</p>

<p v-click>

**Step 4:** Calculate the *sample* standard deviation.
$$ SD = \sqrt{Variance} = \sqrt{916.67} \approx 30.28 $$

</p>

<p v-click>

Now we have our *sample* standard deviation of 30.28 lbs, which we can use as an estimate of the *population* standard deviation of all 100 weights.

</p>

<p v-click>

**Variance is a very important concept in statistics!**

It will come up again and again in this class and in future statistics classes.

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Review: Normal Curves

:: left ::
- A **normal distribution** is:
  - Bell-shaped: Most scores cluster in the center
  - Symmetrical: Left side mirrors the right
  - Unimodal: Only one “hump”  
- Ends of the curve are called **tails**

<div class="mt-1 w-full flex justify-center">
  <div class="bg-red-100 border-2 border-red-300 rounded-lg shadow-md p-4 transform">
    Today, we'll learn why normal distributions are so important in statistics.
  </div>
</div>

:: right ::

<img src="/images/lecture6/normal_dist.png" alt="Normal distribution" class="w-3/4 mx-auto"/>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Cheater Detection Using Normal Curves

:: left ::

- We often expect natural patterns to be normally distributed.  
- Deviations from normality can indicate **cheating** or **manipulation**, or more generally that something is off.

<p v-click>

### Study of sumo wrestlers:
  - 26% finished with 8 wins  
  - 12.2% finished with 7 wins  
  - Expected (if normal): ~19.6% for both outcomes  
</p>

:: right ::

<img src="/images/lecture6/sumo_normal.png" alt="Sumo results normal dist" class="w-1/2 mx-auto"/>

<p v-click>

<div class="mt-1 w-full flex justify-center">
  <div class="bg-red-100 border-2 border-red-300 rounded-lg shadow-md p-2 transform">
    Why might the sumo results deviate from a normal distribution?
  </div>
</div>

</p>

<p v-click>

**Answer:** Sumo wrestlers were throwing matches to help wrestlers who had won 7 matches win their 8th (and have a winning season / advance rounds).

</p>

<p v-click>

<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-2 transform">
    This is also called "anomaly detection" and is used in many fields, including fraud detection.
  </div>
</div>

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# More Scores = More “Normal”

:: left ::

- As sample size increases, samples drawn from normally distributed populations look more normal.
- Larger samples better approximate the true population distribution.
- Small samples can look irregular.  

<img src="/images/lecture6/happiness_small.png" alt="Small normal dist" class="w-3/4 mx-auto"/>


:: right ::


<img src="/images/lecture6/happiness_large.png" alt="Large normal dist" class="w-3/4 mx-auto"/>

<img src="/images/lecture6/happiness_largest.png" alt="Larger normal dist" class="w-3/4 mx-auto"/>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Standardization: Comparing Apples and Oranges

:: content ::
- When data are normally distributed, we can compare scores across ==different== distributions.
    - This can be very useful!

- We actually often do this implicitly, without realizing it or using math.
- Example:
    - If a movie critic typically gives 4-star reviews, and another typically gives 2-star reviews, who gave the better review if they both gave a movie 3 stars?
    - You might intuitively say the second critic, because 3 stars is above their average, while it's below the first critic's average.

<p v-click>

**But how much better?**
- We can use math to quantify this!

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Standardization: Comparing Apples and Oranges

:: content ::

- Standardization lets us compare scores across **different distributions**.  
- We accomplish by converting raw scores into a common metric: “number of SDs from the mean.”  
- This common metric is called a **z score**.
- We can then directly compare *z* scores from different distributions.

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    
    z score: How many standard deviations a score is from the mean of its distribution.

  </div>
</div>

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Standard Deviation

<img src="/images/lecture6/i-am-back.png" alt="I am back meme" class="w-1/4 mx-auto"/>

:: content ::
- **Variance:** average squared deviation from the mean  
- **Standard Deviation (SD):** square root of variance  

$$ SD = \sqrt{\frac{\sum (X_i - M)^2}{N}} $$

- SD tells us the **typical deviation** from the mean.  
- Larger SD = more spread.  


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# The Z Distribution

<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    
    z score: How many standard deviations a score is from the mean of its distribution.

  </div>
</div>

:: left ::

- A $z$ distribution is a distribution of $z$ scores.  
- Properties:  
  - Mean = 0  
  - SD = 1  

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Why is the mean of a z distribution always 0?
  </div>
</div>

</p>

<p v-click>

**Answer:** The mean is **0 standard deviations from the mean**!  

</p>


:: right ::
<img src="/images/lecture6/z_dist.png" alt="Z distribution" class="w-full mx-auto"/>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# The Z Distribution (Continued)

<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    
    z score: How many standard deviations a score is from the mean of its distribution.

  </div>
</div>

:: left ::

- A $z$ distribution is a distribution of $z$ scores.  
- Properties:  
  - Mean = 0  
  - SD = 1  

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Why is the SD of a z distribution always 1?
  </div>
</div>

</p>

<p v-click>

**Answer:** If a raw score is 1 SD above the mean, its z score is 1. If a raw score is 2 SDs above the mean, its z score is 2. And so on. Thus, the SD of the z distribution is always 1. 

</p>


:: right ::
<img src="/images/lecture6/z_dist.png" alt="Z distribution" class="w-full mx-auto"/>


<p v-click>
Understanding a score's relation to the mean of its distribution gives us important information.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# How to Calculate a Z Score

:: content ::
You can sometimes calculate z scores without a calculator.


**Example:**  
- Exam mean = 70  
- SD = 10  
- Your score = 80
- Your friend's score = 75  
- Your enemy's score = 60

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What is your z score? What is your friend's z score? What is your enemy's z score?
  </div>
</div>

<p v-click>

**Answer:** Your $z = 1$, friend's $z = 0.5$, enemy's $z = -1$

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt 
---

:: title ::

# How to Calculate a Sample Z Score: Formula

:: left ::

$$z = \frac{X - M}{s}$$

<img src="/images/lecture6/ohno.jpeg" alt="Oh no" class="w-3/4 mx-auto"/>


:: right ::

**Let's break it down:**


**Step 1:** Compute the sample mean ($M$) and standard deviation ($s$).

**Step 2:** Subtract the mean from your raw score ($X - M$).

*This gives us the distance from the mean.*

**Step 3:** Divide by the standard deviation ($s$). 

*This converts the distance into "number of standard deviations."*

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-1 transform">
    How would we compute a z score for a population instead of a sample?
  </div>
</div>

</p>

<p v-click>

**Answer:** Use the population mean ($\mu$) and population standard deviation ($\sigma$).
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Example: Computing a Z Score

:: content ::
- Mean happiness score of 157 countries = 5.382  
- SD = 1.138  
- Australia’s score = 7.313  

*How many SDs above the mean is Australia's level of happiness?*

$$ z = \frac{7.313 - 5.382}{1.138} \approx 1.7 $$

**Interpretation:**  
Australia's happiness level is **1.7 SDs above the mean**.  

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Example: Computing a Z Score

:: content ::
- Mean happiness score of 157 countries = 5.382  
- SD = 1.138 
- Egypt’s score = 4.362  

$$ z = \frac{4.362 - 5.382}{1.138} \approx -0.9 $$

*How many SDs below the mean is Egypt's level of happiness?*

**Interpretation:**  
Egypt's happiness level is **0.9 SDs below the mean**.  

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Reverse: Transforming Z Scores into Raw Scores

:: left ::
- You can also convert $z$ scores back into raw scores.

Formula:  
$$ X = z \times SD + M $$

:: right ::
**Example:**  
- France happiness: $z = 0.963$  
- Mean happiness score of 157 countries = 5.382  
- SD = 1.139  

$$ X = (0.963)(1.139) + 5.382 \approx 6.48 $$  

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why is this useful?

:: content ::
- *Z* scores allow comparison across different scales.  

**Example:**  
- Imagine we are comparing grades across two PS 211 classes, taught by different professors.

- Your grade: 92/100, class mean = 78.1, SD = 12.2  
- Your friend's grade: 8.1/10, class mean = 9, SD = 0.74  

*Who did better, you or your friend?*

<p v-click>

- Your $z = \frac{92-78.1}{12.2} = 1.14$  
- Friend’s $z = \frac{8.1-6.8}{0.74} = 1.76$  

</p>

<p v-click>

**Conclusion:** Both of you received above average grades, but your friend did better *relative to their class*.  

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Comparing scores across different scales: Practice!

:: content ::
- Imagine you want to decide which of two new restaurants to go to.
- Restaurant A was reviewed by Critic A, who gave it a 7/10.
- Restaurant B was reviewed by Critic B, who gave it a 7/10.

<p v-click>

- You have the smart idea to take a *sample* of each critic's past restaurant ratings to see how harsh or lenient they are.
- Critic A's ratings: $6, 6, 7, 8, 4$
- Critic B's ratings: $4, 5, 5, 9, 8$

</p>

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Which restaurant should you go to, based on the critics' reviews? Explain your reasoning!
  </div>
</div>

**Take 10 minutes to work this out with your neighbors. You can use a calculator and refer to your past notes! There is a lot of computation involved!**

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Comparing scores across different scales: Practice (Continued)

:: left ::
- Critic A's ratings: $6, 6, 7, 8, 4$
- Critic B's ratings: $4, 5, 5, 9, 8$


<p v-click>

**Step 1:** Calculate the mean and SD for each critic's ratings.
- Critic A: $M = 6.2$, $SD \approx 1.48$
- Critic B: $M = 6.2$, $SD \approx 2.17$

</p>


<p v-click>

**Step 2:** Calculate the z score for each restaurant's rating.
- Restaurant A: $z = \frac{7 - 6.2}{1.48} \approx 0.54$
- Restaurant B: $z = \frac{7 - 6.2}{2.17} \approx 0.37$

</p>



:: right ::
<p v-click>

**Conclusion:** Based on the z scores, Restaurant A is a better choice relative to its critic's past ratings.

</p>

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    Why does the standard deviation matter in this comparison?
  </div>
</div>

</p>

<p v-click>

**Answer:** Critic B's ratings are more spread out (higher SD), so a 7/10 is less impressive relative to their average rating than it is for Critic A. 

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Z Scores, Normal Distributions, and Percentiles

:: left ::


- $z$ scores allow us to determine **percentiles**.  
- ==Percentile==: percentage of scores below a given score.
- Normal distributions are standard, so we know the percentage of scores below any $z$ score.


<img src="/images/lecture6/z_percentile.png" alt="Z scores percentiles" class="w-full mx-auto"/>



:: right ::

- 100% of scores fall below $z = +\infty$; 0% fall below $z = -\infty$.
- 50% of scores fall below $z = 0$ (the mean).
- 84% of scores fall below $z = 1$ (1 SD above the mean).
- 68% of scores fall between $z = -1$ and $z = +1$ (within 1 SD of the mean).

- **Can use a z table to find exact percentiles for any z score.** 

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Central Limit Theorem

:: content ::
- ==The theorem:== Any **distribution of sample means** will be approximately normal if the sample size is sufficiently large.

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What is a "distribution of sample means"?
  </div>
</div>

</p>

<p v-click>

**Answer:** A "distribution of sample means" is the distribution of the means of multiple samples taken from a population. It shows how the sample means vary and allows us to make inferences about the population mean.

</p>

<p v-click>

**Example:** We want to estimate the average height of all PS 211 students. Each class, we measure the height of 5 randomly selected students and calculate the mean height of those 5 students. We repeat this process many times, each time selecting a new random sample of 5 students and calculating the mean height. The distribution of these sample means will be approximately normal, even if the original distribution of individual heights is not normal.
</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Central Limit Theorem: Demo

:: left ::
# Dice Rolls
- Imagine rolling a 6-sided die.
- Roll it once, record the result.
- Repeat many times, plot the distribution of results.

:: right ::

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What does this distribution look like?
  </div>
</div>
</p>

<p v-click>

<img src="/images/lecture6/dice_roll_hist.png" alt="Dice rolls 1" class="w-full mx-auto"/>

</p>

<p v-click>

**Answer:** The distribution is ==uniform==, with each outcome (1-6) equally likely.

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Central Limit Theorem: Demo (Continued)

:: left ::
# Sampling Dice Rolls
- Now imagine randomly selecting two rolls from this distribution.
- Compute their mean.
- Repeat many times, plot the distribution of means.

:: right ::

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What does the distribution of means look like?
  </div>
</div>
</p>

<p v-click>

<img src="/images/lecture6/dice_roll_mean_hist.png" alt="Dice roll means" class="w-full mx-auto"/>

</p>

<p v-click>

**Answer:** As the sample size increases, the distribution of means approaches a normal distribution, even though the original distribution is uniform!
</p>



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Distribution of Scores vs. Means

:: left ::

- Even if scores in a population aren’t normally distributed, the distribution of sample means will be approximately normal if the sample size is large enough.
- This is the essence of the Central Limit Theorem.
- A distribution of means is **less variable** than a distribution of raw scores.
- This means it is less spread out.

:: right ::

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Why is the distribution of means less variable than the distribution of raw scores?
  </div>
</div>
</p>

<p v-click>

**Answer:** The distribution of means is less variable because averaging reduces the impact of extreme values. When we take the mean of a sample, we are essentially smoothing out the variability that exists in individual scores.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Central Limit Theorem: Video Explanation

:: content ::
Let's watch someone else explain this!

https://www.youtube.com/watch?v=YAlJCEDH2uY


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Standard Error of the Mean

:: left ::

- The ==standard error (SE)== is the name for the standard deviation of a distribution of sample means.

- The formula for the standard error is:
$$ SE = \frac{s}{\sqrt{n}} $$
where $s$ is the sample standard deviation and $n$ is the sample size.

:: right ::

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    Where does this formula come from?
  </div>
</div>
</p>

<p v-click>

**Answer:** The formula for the standard error comes from the fact that the variability of sample means is related to the variability of individual scores and the sample size. As we increase the sample size, the standard error decreases, reflecting the increased precision of our estimate of the population mean.

*We can derive it mathematically, but that is beyond the scope of this class.*

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Standard Error of the Mean

:: left ::

- The standard error tells us how much variability we can expect in sample means from one sample to another.
- As sample size ($n$) increases, the standard error decreases.
- This means that larger samples yield more ==precise== estimates of the population mean.
- The **standard deviation** tells us the spread of individual data points, while the **standard error** helps quantify the uncertainty in our estimate of the population mean.


:: right ::

<p v-click>
<div class="mt-1 w-full flex justify-center">
    <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow
    -md p-4 transform">
    Why is this value important in psychological research?
  </div>
</div>
</p>

<p v-click>

**Answer:** The standard error is important because it helps researchers understand how much their sample mean might vary from the true population mean.
</p>

<p v-click>
<img src="/images/lecture6/barplot_sem.png" alt="Error bars" class="w-3/4 mx-auto"/>
</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Calculating Standard Error

:: left ::

- If the SD of a distribution of individual scores = 5
- If we take samples of size $n = 25$, then the SE of the distribution of sample means is:
$$ SE = \frac{5}{\sqrt{25}} = \frac{5}{5} = 1 $$

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">

 What if we take samples of size $n = 9$? What if we take samples of size $n = 100$? Which will have a smaller SE? Why?
   
  </div>
</div>


:: right ::

<p v-click>

**Answer:**
- For $n = 9$:
$$ SE = \frac{5}{\sqrt{9}} = \frac{5}{3} \approx 1.67 $$

- For $n = 100$:
$$ SE = \frac{5}{\sqrt{100}} = \frac{5}{10} = 0.5 $$

The sample size of $n = 100$ will have a smaller SE because the standard error decreases as the sample size increases. This reflects the increased precision of our estimate of the population mean with larger samples.

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Practice: Putting concepts together

:: left ::

- Imagine you want to determine whether Psychology majors or Biology majors have higher GPAs. You randomly sample 30 students from each major and record their GPAs.

<div class="mt-1 w-full flex justify-center">
    <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow
    -md p-4 transform">
    What would be a good way to visualize these GPA distributions? Think of two types of plots that could be used for this purpose.
    </div>
</div>

<p v-click>

1. **Box plots:** These would allow you to see the median, quartiles, and potential outliers for each major's GPA distribution.
2. **Histograms:** These would show the frequency distribution of GPAs for each major, allowing you to see the shape of the distribution (e.g., normality, skewness).

</p>



:: right ::

<div class="mt-1 w-full flex justify-center">
    <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow
    -md p-4 transform">
    Now imagine you want to compare the mean GPAs of the two groups. What would be a good way to quantify your uncertainty in the estimate of these means? How could you visualize the uncertainty in your estimate of the mean GPA for each major?
    </div>
</div>

<p v-click>

**Answer:** You could calculate the **standard error (SE)** for each group's mean GPA. 

To visualize the uncertainty in your estimate of the mean GPA for each major, you could use barplots with error bars representing the SE for each group. 

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Practice: Putting concepts together (Continued)

:: left ::

# Let's take a look at what those plots might look like

<br>

<img src="/images/lecture6/gpa_barplot.png" alt="Barplot of gpa with error bars" class="w-1/2mx-auto"/>

<p v-click>

**Challenge question:** If the SE represents +/- 1 SD of the distribution of sample means, what is the probability that the true population mean falls within the error bars shown in the barplot?

</p>

<p v-click>

**Answer:** Approximately 68% of the time, since the error bars represent +/- 1 SD of the distribution of sample means.

</p>


:: right ::

<img src="/images/lecture6/gpa_hist.png" alt="Histogram of gpa" class="w-3/4 mx-auto"/>

<br>

<img src="/images/lecture6/gpa_boxplot.png" alt="Boxplot of GPA" class="w-3/4 mx-auto"/>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# R Demo: Z Scores and Percentiles

:: left ::
- Let's do a quick demo in R to calculate z scores and percentiles.


```r
# Sample data: Happiness scores of countries
happiness_scores <- c(7.313, 6.48, 4.362, 5.5, 3.8, 6.9, 4.12)

# Calculate mean and standard deviation
mean_happiness <- mean(happiness_scores)
sd_happiness <- sd(happiness_scores)

# Calculate z scores
z_scores <- (happiness_scores - mean_happiness) / sd_happiness
z_scores

# Convert z scores to percentiles with the 'pnorm' function
percentiles <- pnorm(z_scores) * 100
percentiles
```


:: right ::

- Now let's try some R practice! 
- We will use the dataset "quakes" which contains information about earthquakes, including their magnitudes.
- Imagine you experience an earthquake of magnitude 6. What percentage of earthquakes off the coast of Fiji are less severe than the one you experienced?




---
layout: cover
color: indigo-light
---

# Time for Lecture 7!
