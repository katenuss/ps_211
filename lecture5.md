---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 5
exportFilename: ps211_fall2025_lecture5
---

# PS 211: Introduction to Experimental Design
## Fall 2025 · Section C1
### Lecture 5: Overview of Sampling, Probability, and Hypothesis Testing

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and reminders

:: content ::
- ==Homework 1== was due yesterday. Hopefully you have submitted. If not, please do so ASAP. 
- We will post homework answers and grades on Friday morning, at which point we will no longer accept late submissions.
- We will not be returning Homework 1. If you are not sure where you got points off, please review the posted answers, and come to office hours if you have questions.
- The next homework will be posted after Exam 1, and will be due on **Friday, October 10**.
- We are going to go over some more information about how to use **R** and **R Studio** today.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Updates and reminders (Continued)

:: content ::
- Exam 1 is scheduled for **Thursday, September 25** during our regular class time.
- Exam 1 will cover Lectures 1–5.
- I will post a review sheet by Friday with a list of all the topics the exam will cover.
- You can print this review sheet and take hand-written notes on it (both sides) to use during the exam.
- Alternatively, you can write your own notes on a blank sheet of paper (both sides).
- You will *not* be tested on R code, but you should be able to interpret plots and output from R. For example, we may show you a histogram or frequency table created in R and ask you questions about them.
- The class before the exam (Tuesday, September 23) will be a review session.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Before we begin discussing sampling and probability...

:: content ::
- Resolving key points of confusion about R:
    - Opening and closing R Studio without losing work.
    - Files: .R, .Rmd, .Rproj, .html, .pdf. *What are they and when to use each?*
    - Saving your work: saving code vs. workspace variables.

<img src="/images/lecture5/help_meme.jpg" alt="help" class="mx-auto w-1/3" />

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Central Tendency

:: content ::
- **Mean ($\mu$, M)**: Average score. Sensitive to outliers.
- **Median**: Middle score. Robust to outliers.
- **Mode**: Most frequent score. 

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Which one of these measures is useful for nominal data?
  </div>
</div>

<p v-click>

**Answer:** Only the mode is useful for nominal data.

Nominal data represent categories without a meaningful order or numerical value. 

The mean and median require numerical values and are not meaningful for nominal data.

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Review: Central Tendency

:: left ::

<img src="/images/lecture5/starbucks_fat_hist.png" alt="starbucks fat" class="mx-auto w-3/4" />

The histogram shows the fat content (in grams) of Starbucks drinks.

:: right ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Which line represents the mean and which line represents the median? How do you know?
  </div>
</div>

<p v-click>

**Answer:** The red line represents the mean, and the green line represents the median.
The mean is higher than the median because the distribution is positively skewed (right-skewed) due to a few drinks with very high fat content.

</p>

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is the mode?
  </div>
</div>
</p>

<p v-click>

**Answer:** The mode is 0 grams of fat, as indicated by the tallest bar in the histogram.

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Review: Variability

:: left ::

<img src="/images/lecture5/sugar_hist.png" alt="starbucks sugar" class="mx-auto w-3/4" />

<br> 
<br> 

<img src="/images/lecture5/caffeine_hist.png" alt="starbucks caffeine" class="mx-auto w-3/4" />

:: right ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Which is more variable: sugar content of Starbucks drinks or their caffeine content? How do you know? Which measure of variability would you use to quantify this?
  </div>
</div>

<p v-click>

**Answer:** The sugar content is much more variable than the caffeine content. We could use any measure of variability (range, variance, standard deviation) to quantify this. 

**Note:** ==Look at the x-axis scales.== The sugar histogram ranges from 0 to 100 grams, while the caffeine histogram ranges from 0 to .4 g! 

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Population Variance: Step by Step

:: content ::

1. Compute the population mean ($\mu$).
2. For each score $X_i$, compute its deviation: $(X_i - \mu)$.
3. Square each deviation.
4. Sum all squared deviations.
5. Divide by the total number of scores ($N$).

Formula:
$$\sigma^2 = \frac{\sum_{i=1}^{N} (X_i - \mu)^2}{N}$$


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Population Standard Deviation

:: content ::
- The standard deviation is the square root of the variance.

$$\sigma = \sqrt{\frac{\sum_{i=1}^{N} (X_i - \mu)^2}{N}}$$

- It tells us the **typical amount that scores deviate from the mean.**

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Sample Variance: Step by Step

:: left ::

1. Compute the sample mean ($M$).
2. For each score $X_i$, compute $(X_i - M)$.
3. Square each deviation.
4. Sum all squared deviations.
5. Divide by $N-1$.

Formula:
$$s^2 = \frac{\sum_{i=1}^{N} (X_i - M)^2}{N-1}$$


:: right ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Why do we use the sample mean instead of the population mean here?
  </div>
</div>

<p v-click>

**Answer:** We use $M$ (the sample mean) instead of $\mu$ (the population mean) because we typically do not know the population mean when working with a sample. The sample mean is our best estimate of the population mean based on the data we have.

Here, we use our samples to estimate *both* the ==population mean== and the ==population variance.== That means our estimate of the mean is biased towards the samples. 

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Why divide by N-1?

:: left ::
- Using $M$ instead of $\mu$ makes our estimate **too close** to the data.
- This tends to **underestimate the true population variance.**
- Dividing by $N-1$ (instead of $N$) corrects this bias.
- This adjustment is called **Bessel’s correction.**

:: right ::

<img src="/images/lecture5/bessel.jpg" alt="bessel" class="mx-auto w-1/2" />

**Bessel's correction**: dividing by $N-1$ (instead of $N$) corrects bias in the estimate of the population variance.


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Sample Standard Deviation

:: content ::
- The sample SD is the square root of the sample variance:

$$s = \sqrt{\frac{\sum_{i=1}^{N} (X_i - M)^2}{N-1}}$$

- This provides an **unbiased estimate** of the population’s spread.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why divide by N-1?

:: content ::

**Khan Academy Video Explanation:**

https://www.youtube.com/watch?v=KkaU2ur3Ymw&t=520s


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# New stuff! Sampling and probability

:: content ::
- Now that we understand variance and SD, we can see **why sampling matters.**
- We will also discuss **probability**, which is the foundation of inferential statistics.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Why do we sample?

:: content ::
- We usually want to know about a **population** (e.g., all college students).
- But we can’t measure everyone, so we take a **sample** (e.g., 20 BU students who participate in a study).
- We use the sample to estimate population parameters (e.g., mean, variance).
- We also use samples to test general hypotheses about broader populations. Inferential statistics lets us do this!


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Two main types of samples in Psychological Science

:: left ::
- **Random Sample:** Every member of the population has an equal chance of being selected.
    - Advantage: More representative.
    - Disadvantage: Expensive, often impossible.

:: right ::
- **Convenience Sample:** Uses participants who are readily available.
    - Common in psychology (e.g., Psych 101 students).
    - Easier and cheaper, but may introduce bias.


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Examples: Samples in Psychological Studies

:: left ::

<img src="/images/lecture5/participants_methods.png" alt="participant sample" class="mx-auto w-3/4" />

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Is this a random or convenience sample? How do you know?
  </div>
</div>

<p v-click>

**Answer:** This is a convenience sample. The participants volunteered to take part in the study, and they were recruited through flyers and online postings. This means they were not randomly selected from the general population.
</p>

:: right ::

<p v-click>

*A researcher wants to study whether giving BU students free coffee improves their mood. They randomly select 50 students from the entire BU student directory to participate in the study.*

</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
     Is this a random or convenience sample? How do you know?
  </div>
</div>
</p>

<p v-click>

**Answer:** This is a random sample. The researcher randomly selected participants from the entire BU student directory, giving every student an equal chance of being chosen.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Random Sampling: One way to do it

:: content ::
- Use a computer program to generate random numbers.
- Use those numbers to select participants from a list.

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
     You use a computer program to randomly select 10 students from your 100-person Psych 101 class to participate in a study. Your computer spits out the following numbers: 1, 2, 3, 4, 44, 56, 57, 58, 83, 99. They don't look very random to you. Should you re-run the program to get a different set of numbers?
  </div>
</div>
</p>

<p v-click>

**Answer:** No! Randomness can produce streaks or clusters of numbers. The set of numbers you got is just as random as any other set.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Convenience Sampling

:: content ::
- In practice, true random samples are rare.
- Psychologists often rely on **convenience samples**.
- Example: Volunteer samples (people who sign up for studies).
    - Benefits: Motivated and willing participants.
    - Downsides: Self-selection bias. The people who volunteer may differ from those who don’t.

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Generalizability & External Validity

:: left ::
- **Generalizability** = how well findings from a sample apply to a population.
- Also called **external validity.**
- Critical for psychology: a study that doesn’t generalize may have little impact.
- Convenience samples may limit generalizability.

:: right ::

<img src="/images/lecture5/weird_science.png" alt="weird psychology" class="mx-auto w-1/2" />

<p v-click>

Stats from Arnett (2008):
- From 2003‐2007, ==68%== of subjects in psychology studies in top journals came from the US.
- ==96%== came from from Western industrialized countries.  
- In the *Journal of Personality and Social Psychology*, ==67%== of the American samples were composed of undergraduates in psychology courses.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Modern Sampling Techniques

:: content ::
- Online crowdsourcing solicits input from a large group of people.
- There are many online platforms for this:
    - e.g., Amazon Mechanical Turk (MTurk), Prolific, Qualtrics Panels.
- Participants sign up to complete surveys or tasks for pay.
- These platforms provide access to large, diverse samples quickly and cheaply.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Crowdsourcing

:: content ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What are some potential advantages and disadvantages of using crowdsourcing platforms for research?
  </div>
</div>

<p v-click>

**Advantages:**
- Access to a large and diverse participant pool.
- Cost-effective and time-efficient.
- Ability to reach participants from various geographic locations.

**Disadvantages:**
- Potential for low-quality data (e.g., inattentive respondents).
- Limited control over the research environment.
- Limited types of data can be collected (e.g., no brain imaging)

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Random Assignment

:: content ::
- **Random sampling**: Selecting participants for a study.
- **Random assignment**: Assigning participants to conditions within a study.
- Ensures every participant has an equal chance of being in any condition (i.e., level of the independent variable).

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Why should researchers care about random assignment if they don't seem to care about random sampling?
  </div>
</div>

<p v-click>

**Answer:** Random assignment helps to reduce the risk of confounding variables by ensuring that the groups are comparable at the start of an experiment. This is important for understanding causality even if the sample itself is not representative of the broader population.

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Example: Random Assignment

:: content ::
- Imagine you want to run a between-subjects version of the Stroop task.
- You decide to run this experiment on your PS 211 classmates.
- You divide the class into two groups:
    - Group 1: Congruent condition. (e.g., the word "red" printed in red ink).
    - Group 2: Incongruent condition. (e.g., the word "red" printed in blue ink).
- You assign the first 10 students who arrive to Group 1, and the next 10 to Group 2.

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Is this a good method of random assignment? Why or why not?
  </div>
</div>

<p v-click>

**Answer:** No, this is not a good method of random assignment. Assigning students based on their arrival order can introduce bias, as early arrivers may differ systematically from later arrivers (e.g., in motivation or punctuality). 

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Descriptive vs. Inferential Statistics

:: content ::
- **Descriptive stats:** Summarize data from a sample. "Describe" the sample.
    - Examples: "The average amount of sugar in the five drinks I tried from Starbucks is 30 grams."

- **Inferential stats:** Allow us to draw conclusions about populations from samples.
    - Examples: "Based on my sample, I estimate that the average amount of sugar in all Starbucks drinks is between 20 and 50 grams."


<p v-click>

- But ... how do we ensure that these inferences are valid? **Probability!**

<img src="/images/lecture5/coin_flip.jpg" alt="coin" class="mx-auto w-1/3" />

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Probability

:: content ::
- **Probability** = the likelihood that a specific outcome will occur, out of all possible outcomes.
- Ranges from 0 (impossible) to 1 (certain).
- Example: Probability of flipping heads on a fair coin = 0.5.
- Probability helps us understand and quantify uncertainty.
- **Experimental probability** = relative frequency of an outcome in repeated trials.
- **Theoretical probability**= based on known possible outcomes (e.g., coin flips, dice rolls).

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Probability Terms

:: content ::
- **Trial:** Each repetition of an event or each occasion a procedure is carried out (e.g., a dice roll).
- **Outcome:** Result of the trial.
- **Success:** The outcome of interest (e.g., heads).

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    If you want to determine the probability of a coin landing on heads, what is a trial, an outcome, and a success?
  </div>
</div>

<p v-click>

**Answer:**
- Trial: Each flip of the coin.
- Outcome: The result of the coin flip (either heads or tails).
- Success: The coin landing on heads.
</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Independent Trials

:: content ::
- Independent = one trial’s outcome does not affect another.
- Example: slot machines, coin flips.
- Yes, rare streaks can occur!

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Probability: Our intuitions are bad!

:: content ::
- We are generally bad at intuitively grasping probability.
- We see patterns where none exist (e.g., gambler’s fallacy).
- We overestimate the likelihood of vivid events (e.g., shark attacks).
- We underestimate the likelihood of common events (e.g., car accidents).
- We notice evidence that confirms our beliefs, and ignore contrary evidence (confirmation bias).

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Probability intuitions: The birthday paradox

:: content ::
- What's the probability that two people in this class of 45 have the same birthday (out of 365 days)?

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What do you think the answer is closest to: 1%, 10%, 30%, 50%, 70%, or 90%?
  </div>
</div>

<p v-click>

**Answer:** The probability is surprisingly high! It's actually 94.1%. 

Probability that at least two people share a birthday in a group of 45 is calculated using the complementary probability that no one shares a birthday, which is then subtracted from 1.

- Probability that no one shares a birthday:
  $$ P(\text{no shared birthday}) = \frac{365}{365} \times \frac{364}{365} \times \frac{363}{365} \times ... \times \frac{321}{365} $$ 

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Probability is important for ... hypothesis testing!

:: content ::
- Hypothesis-testing: Using sample data to evaluate two competing hypotheses about a population.

*Example: Are students who take PS 211 happier than other BU students?*

Experiment: 
- Administer survey measuring happiness (scale 1-10) to a random sample of 10 PS 211 students and a random sample of other BU students.
- Results: PS 211 students: ${8, 7, 9, 6, 8, 7, 9, 10, 8, 7}, M = 8.0$ 
- Other BU students: ${5, 6, 4, 5, 6, 5, 4, 5, 6, 5}, M = 5.0$

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Are the 10 students in PS 211 on average happier than the 10 other BU students?
  </div>
</div>

<p v-click>

**Answer:** Yes, we can draw that conclusion about the sample based on the sample means (assuming we believe our survey is valid and reliable).

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Probability is important for ... hypothesis testing!

:: content ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    Can we conclude that PS 211 students are happier than other BU students? Why or why not?
  </div>
</div>

<p v-click>

**Answer:** We cannot conclude that PS 211 students are happier than other BU students based solely on this sample. The observed difference in means could be due to random chance, especially given the small sample sizes. We need to conduct a hypothesis test to determine if a real difference likely exists in the population.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing

:: content ::
- In psychological research, we define two hypotheses:
    - **Null Hypothesis (H₀):** There is no difference.
        - The null hypothesis is a statement that postulates that there is no difference between populations or that the difference is in a direction opposite of that anticipated by the researcher.
        - Any observed difference is due to random chance or sampling error.


    - **Research Hypothesis (H₁):** There is a difference.
        - There is a difference between populations or sometimes, more specifically, that there is a difference in a certain direction, positive or negative; also called an alternative hypothesis.
        - An observed difference reflects a true effect in the population.
    
- ==Goal: Use data to test which is more plausible.==

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing: Examples

:: content ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    In the PS 211 happiness example, what are the null and research hypotheses?
  </div>
</div>

<p v-click>

**Answer:**
- Null Hypothesis (H₀): There is no difference in happiness levels between PS 211 students and other BU students.
- Research Hypothesis (H₁): PS 211 students are happier than other BU students.
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing: Examples (Continued)

:: content ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    In the Stroop task example, what are the null and research hypotheses?
  </div>
</div>

<p v-click>

**Answer:**
- Null Hypothesis (H₀): There is no difference in reaction times between the congruent and incongruent conditions.
- Research Hypothesis (H₁): Reaction times are slower in the incongruent condition compared to the congruent condition.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Directions

:: content ::
- Both of these examples had ==directional== research hypotheses (PS 211 students are happier; Stroop incongruent is slower).
- Sometimes, we have ==non-directional== research hypotheses (e.g., there is a difference, but we don’t know the direction).
- The type of hypothesis affects the type of *significance test* we use. We will cover *significance testing* in more detail later.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# One-tailed vs. Two-tailed Tests

:: content ::
- **One-tailed test:** Tests for an effect in one direction (e.g., PS 211 students are happier).
- **Two-tailed test:** Tests for an effect in either direction (e.g., there is a difference in happiness, but we don’t know which group is happier).
- One-tailed tests have more statistical power, but can miss effects in the opposite direction.

<img src="/images/lecture5/tail_meme.jpg" alt="one two tailed" class="mx-auto w-1/3" />

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Rejecting the Null Hypothesis

:: left ::
**The goal of statistics is to determine whether we can reject the null hypothesis.**

- We either reject or fail to reject H₀ based on the data.
- If the data are very unlikely under H₀, we reject H₀ in favor of H₁.
- If the data are not unlikely under H₀, we fail to reject H₀
- We never "accept" H₀, because we can’t prove it true.
- We use probability to assess how likely our data are under H₀.


:: right ::
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What's wrong with this statement of experiment results: "PS 211 students are equally as happy as other BU students."?
  </div>
</div>

<p v-click>

**Answer:** This statement suggests that we have proven the null hypothesis (H₀) to be true, which is not possible. We can only fail to reject H₀.

</p>

<p v-click>
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    How should we fix it?
  </div>
</div>

</p>

<p v-click>

**Answer:** A better way to state the results would be: "We did not find evidence that PS 211 students are happier than other BU students."    

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Two ways to be wrong: Type I and Type II Errors

:: content ::
- **Type I error:** Rejecting H₀ when it is true (false positive).
    - "You said PS 211 students are happier, but they aren't."
- **Type II error:** Failing to reject H₀ when it is false (false negative).
    - "You said PS 211 students aren't happier, but they are."
- Both errors have consequences.

<img src="/images/lecture5/errors.png" alt="type 1 type 2" class="mx-auto w-1/2" />

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Type I and Type II Errors: Example

:: content ::

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    You have a cough and decide to take a covid test. What is your null and alternative hypothesis?
  </div>
</div>

<p v-click>

**Answer:**
- Null Hypothesis (H₀): You do not have COVID-19. (i.e., you are not 'different' from your usual healthy state)
- Alternative Hypothesis (H₁): You have COVID-19. (i.e., you are 'different' from your usual healthy state)

</p>

<p v-click>

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    If the test comes back positive, but you actually don't have COVID-19, what type of error is this? 
  </div>
</div>

</p>

<p v-click>

**Answer:** This is a Type I error (false positive). You rejected the null hypothesis (you do not have COVID-19) when it was actually true.

</p>

---
layout: cover
color: indigo-light
---

# That's all for today!
See you Thursday -- we will combine probability with hypothesis testing and inference.