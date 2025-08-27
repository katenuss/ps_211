---
colorSchema: light
routerMode: hash
layout: cover
color: indigo-light
theme: neversink
mdc: true
neversink_slug: PS 211 - Lecture 2
exportFilename: ps211_fall2025_lecture2
---

# PS 211: Introduction to Experimental Design
## Spring 2025 · Section C1
### Lecture 2: More variables and research methods

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::

# Updates & Reminders

:: content ::

- The ==pre-course survey== (linked on Slack in "general") is due by **Friday, Sep. 5** for a bonus point on the first exam.
  - Please fill this out! It will help us tailor the course to all students' backgrounds, and provide a dataset for us to analyze together.

<p v-click>

- You should be working on having ==R and R Studio== installed on your personal computer.
  - If you have not yet successfully installed them, please follow the instructions on Slack and come to office hours if you need help.

  <img src="/images/lecture2/help_meme.jpeg" alt="help" class="mx-auto" />
</p>



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Review: Types of Variables

:: content ::
- **Continuous variables**
  - Quantitative only
  - Any value within a range; can have fractions (e.g., height, weight)

- **Discrete variables**
  - Quantitative or qualitative
  - Only specific values; no fractions (e.g., number of pets) 


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Review: Discrete Variables

:: left ::
- **Nominal**: categories with names (e.g., Democrat = 1, Republican = 0; numbers meaningless)  
- **Ordinal**: rankings with order, but no fractions (e.g., 1st, 2nd, 3rd place)  

:: right ::


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Review: Continuous Variables

:: left ::

- **Interval**: equal intervals, no true zero (e.g., temperature in °F)  
- **Ratio**: equal intervals, true zero (e.g., lever presses = 0)  

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-2 transform">
    Sometimes our measurement tools limit us to discrete variables, even if the underlying construct is continuous.
  </div>
</div>
</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Example: Measuring boredom on a 1-5 scale
  </div>
</div>
</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-2 transform">
    This will be important when we discuss which statistical tests to use later in the course!
  </div>
</div>
</p>

:: right ::

 <img src="/images/lecture1/levels_of_measurement.jpg" alt="levels of measurement" class="mx-auto" />

---
layout: cover
color: indigo-light
---

# New material
### Types of research, experimental variables, operational definitions, reliability & validity, confounds, hypothesis testing

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Research methods to address psychological questions

:: content ::
#### Non-Experimental
  - Naturalistic/Observational  
  - Case Studies  
  - Surveys & Questionnaires  

#### Experimental 
  - Lab and field experiments 

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# What is an experiment?

:: content ::

## An ==experiment== is a study in which independent variable(s) are manipulated to examine their effect on dependent variable(s).

- Involves *changing* or *manipulating* something
- Goal is to determine *causal* relations
- Requires *controlled* conditions


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Defining variables

:: content ::
### **Independent Variable (IV)**: Has two or more levels (values); is manipulated to observe effects on the ...

<br>

### **Dependent Variable (DV)**: The outcome variable that we hypothesized would be affected by the IV. 

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform rotate-.5">
  Note: In non-experimental studies, independent variables are not manipulated, but instead are selected or observed as they naturally occur.
  </div>
</div>
</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
  This is often the case in developmental studies, where age is an independent variable that cannot be manipulated.
  </div>
</div>
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Defining variables

:: content ::

## Variables must be defined. 
- Some are easy to define and measure: Year, height, age, etc.
- Some are harder: Happiness, anxiety, intelligence, etc.

<br>

## ==Levels==: Values that a variable can take on.
- Discrete variable example: "Type of pet" has levels "dog", "cat", "hamster", etc.
- Continuous variable example: "Reaction time" has levels from 0 to infinity.

--- 
layout: top-title
color: indigo-light
align: lt
---
:: title ::

# Defining and graphing variables using X and Y

:: content ::

- **X** = Independent Variable (IV); goes on the X (horizontal) axis
- **Y** = Dependent Variable (DV); goes on the Y (vertical) axis

<img src="/images/lecture2/xy_axes.png" alt="xy axes" class="mx-auto max-h-96 object-contain" />



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Non-experimental research: Correlational studies

:: left ::

## Correlational studies: Observe variables as they naturally occur to see if they are related.
- Useful for demonstrating relationships between variables.
- Cannot determine causality.
- Example: Surveying people about their exercise habits and mental health to see if they are related.

:: right ::

<p v-click>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What are the advantages of a correlational study?
  </div>
</div>

</p>

<p v-click>

**Answer:** Correlational studies are useful for identifying relationships between variables and can provide insights for further research. They are often easier and less expensive to conduct than experimental studies. Sometimes, they are the only ethical (or possible!) option.

</p>

<p v-click>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What are the disadvantages of a correlational study?
  </div>
</div>

</p>

<p v-click>

**Answer:** They can be influenced by confounding variables (more on this later)! They cannot establish causality.

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Practice: Identifying Variables

:: left ::

### A researcher wants to see if having students bring laptops to class affects their exam scores. Half the students are randomly assigned to bring laptops; half are not. At the end of the semester, all students take the same exam.


:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What is the IV and what are its levels?
  </div>
</div>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What is the DV?
  </div>
</div>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Practice: Identifying Variables

:: left ::

### A researcher wants to see if having students bring laptops to class affects their exam scores. Half the students are randomly assigned to bring laptops; half are not. At the end of the semester, all students take the same exam.


:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Is this an experiment?
  </div>
</div>

**Answer**: Yes! The researcher is manipulating whether students bring laptops or not.

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is the IV and what are its levels?
  </div>
</div>

**Answer**: IV = Laptop use; Levels = laptop, no laptop

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is the DV?
  </div>
</div>

**Answer**: DV = Exam score

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Practice: Identifying Variables

:: left ::

### A researcher wants to see if watching a movie about climate change affects attitudes towards climate change. She polls 100 people about whether they have watched *An Inconvenient Truth* and then asks them to fill out a questionnaire about their attitudes towards climate change.

:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Is this an experiment?
  </div>
</div>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is the IV and what are its levels?
  </div>
</div>


<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is the DV?
  </div>
</div>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::

# Practice: Identifying Variables

:: left ::

### A researcher wants to see if watching a movie about climate change affects attitudes towards climate change. She polls 100 people about whether they have watched *An Inconvenient Truth* and then asks them to fill out a questionnaire about their attitudes towards climate change.

:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    Is this an experiment?
  </div>
</div>

**Answer**: No. The researcher is not manipulating anything; she is just collecting observational/survey data.

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is the IV and what are its levels?
  </div>
</div>

**Answer**: IV = Watching *An Inconvenient Truth*; Levels = watched, not watched

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-2 transform">
    What is the DV?
  </div>
</div>

**Answer**: DV = Attitudes towards climate change (measured via questionnaire)


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Correlations: Not always useful

:: left ::

### Margarine consumption is strongly related to divorce rates in Maine.

<img src="/images/lecture2/maine_divorce.png" alt="correlation example 1" class="mx-auto max-h-96 object-contain" />

:: right ::

### The number of pirates is related to global temperature.

<img src="/images/lecture2/temp_pirates.png" alt="correlation example 2" class="mx-auto max-h-96 object-contain" />

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    Does this plot tell us that decreasing numbers of pirates causes global temperatures to rise?
  </div>
</div>
</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Problem of Confounds

:: content ::

- **Confounding Variable**: Vary along with the independent variable (IV) making it hard to isolate the causal effect of the IV on the dependent variable (DV).

<img src="/images/lecture2/shark_attack.jpg" alt="shark" class="mx-auto max-h-96 object-contain" />

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Experimental design and confounds

:: content ::

- Well-designed **experiments** can control for confounding variables **and** allow for causal inferences.
- **Random assignment** helps ensure that confounding variables are equally distributed across conditions.

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    However, experiments can still have confounds if not properly designed.
  </div>
</div>
</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Correlational vs. experimental study

:: left ::

- **Correlational study:** 
  - A company runs a study where employees are allowed to join a voluntary wellness program.
  - The company then measures the number of healthy behaviors (e.g., exercise, healthy eating) reported by employees who joined the program versus those who did not.

:: right ::

<img src="/images/lecture2/wellness.png" alt="wellness" class="mx-auto max-h-96 object-contain" />

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What can you conclude from these results?
  </div>
</div>
</p>

<p v-click>

**Answer:** Employees who joined the wellness program reported more healthy behaviors.

**Important:** We *cannot* conclude anything about causality!

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Correlational vs. experimental study

:: left ::

- **Experimental study:** 
  - Employees are randomly assigned to either have access to a wellness program or not.
  - The company then measures the number of healthy behaviors (e.g., exercise, healthy eating) reported by employees who have access to the program versus those who do not.


:: right ::

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    If there's a relation between access to the wellness program and healthy behaviors, what could you conclude from these results?
  </div>
</div>
</p>

<p v-click>

**Answer:** Having access to the wellness program causes employees to report more healthy behaviors.

</p>



---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Practice: Identifying Confounds

:: left ::

- Researchers decide to manipulate exercise (IV) to see if it affects mood (DV). 
- They assign 10 college students to a high-exercise group (jogging 5 times a week) and 10 to a low-exercise group (no exercise). 
- After 4 weeks, they measure mood using a questionnaire. 
- They then find that students in the high-exercise group reports better moods than the low-exercise group. 
- The researchers conclude that exercise improves mood.

:: right ::

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    What is one potential confound in this experiment that may undermine this conclusion?
  </div>
</div>
</p>

<p v-click>

**Answer:** There are many! Over the four weeks, the high-exercise group may have had:
- better moods to begin with.
- more social interaction over the four weeks.
- more exposure to sunlight.

</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    What else could have gone wrong in this experiment?
  </div>
</div>
</p>

<p v-click>

**Answer:** The manipulation may not have worked. Maybe the low-exercise group actually exercised more than the high-exercise group!

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Reliability and Validity

:: content ::
### **Reliability**: consistency across repeated measures  

<br>

### **Validity**: measuring what it’s supposed to measure 

<br>

### Examples:  
- A *reliable* scale gives the same weight each time.
- A *valid* scale gives the true weight.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Can a measure be...

:: content ::

## Reliable but not valid? 

<br>
<br>
<br>

## Valid but not reliable? 


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Can a measure be...

:: content ::

## Reliable but not valid? 
- Yes! A broken scale that always reads 5 lbs too heavy is reliable (consistent) but not valid (not accurate).
- Yes! An IQ test may give you the same score each time (reliable) but not actually measure intelligence (valid).


## Valid but not reliable? 

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Can a measure be...

:: content ::

## Reliable but not valid? 
- Yes! A broken scale that always reads 5 lbs too heavy is reliable (consistent) but not valid (not accurate).
- Yes! An IQ test may give you the same score each time (reliable) but not actually measure intelligence (valid).


## Valid but not reliable? 
- No! If a measure is not consistent, it cannot be valid because it cannot be accurate.
- A measure can't measure what it's supposed to measure if it gives different results each time.
- Example: A scale that gives different weights each time is neither reliable nor valid.

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Reliability in practice

:: content ::
- **Test-Retest Reliability**: consistency of scores over time (e.g., same test, different times)
- **Inter-Rater Reliability**: consistency between different raters/judges (e.g., two therapists rating the same session)
- **Internal Consistency**: consistency of items within a test (e.g., all items measuring the same construct)


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Reliability and Validity: Example

:: left ::

- Imagine you want to run a study where you measure whether reading happy poems makes people feel happier. 
- You select five different poems and ask ChatGPT to rate how happy each poem is on a scale from 1-10. 
- You then ask participants to read one of the poems and rate how happy they feel on a scale from 1-10.

:: right ::
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    How could you determine if ChatGPT's ratings are reliable?
  </div>
</div>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    How could you determine if ChatGPT's ratings are valid?
  </div>
</div>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    How could you improve the validity of your rating scale?
  </div>
</div>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Reliability and Validity: Example

:: left ::

- Imagine you want to run a study where you measure whether reading happy poems makes people feel happier. 
- You select five different poems and ask ChatGPT to rate how happy each poem is on a scale from 1-10. 
- You then ask participants to read one of the poems and rate how happy they feel on a scale from 1-10.

:: right ::
<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    How could you determine if ChatGPT's ratings are reliable?
  </div>
</div>

**Answer:** You could ask ChatGPT to rate the same poems multiple times and see if the ratings are consistent.

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    How could you determine if ChatGPT's ratings are valid?
  </div>
</div>

**Answer:** You could compare ChatGPT's ratings to human ratings of the same poems to see if they align.

<div class="mt-1 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    How could you improve the validity of your rating scale?
  </div>
</div>

**Answer:** You could use it alongside an established scale for measuring happiness and compare results.



---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Experimental Example: The Stroop Task

:: content ::

<p v-click>

- The Stroop Task is used to study how well people can suppress interference from "automatic" cognitve processes (like reading).
  - This is an important aspects of what's commonly referred to as "cognitive control." 
</p>

<p v-click>

- Participants see color words (e.g., "red", "blue", "green") printed in different colors and must name the ink color as quickly as possible.
- Two conditions:
  - **Congruent**: word meaning matches ink color (e.g., "red" in red ink)
  - **Incongruent**: word meaning does not match ink color (e.g., "red" in blue ink)

</p>

<p v-click>

- Researchers measure reaction times (RTs) for naming the ink color in both conditions.

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Stroop Task: Let's try it!

:: content ::

<p v-click>

<img src="/images/lecture2/stroop_effect.jpg" alt="stroop incongruent" class="mx-auto max-h-96 object-contain" />

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# The Stroop Task: Let's try it!

:: content ::

<p v-click>

<img src="/images/lecture2/stroop_effect_congruent.jpg" alt="stroop congruent" class="mx-auto max-h-96 object-contain" />

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# The Stroop Task: Typical results

:: left ::

<img src="/images/lecture2/stroop_findings.jpg" alt="stroop findings" class="mx-auto max-h-96 object-contain" />

:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What is the IV and what are its levels? 
  </div>
</div>

<p v-click>

**Answer**: IV = Task condition; Levels = Congruent, Incongruent, (and sometimes Control)

</p>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    What is the DV?
  </div>
</div>

<p v-click>

**Answer**: DV = Reaction Time (RT) to name ink color

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Hypothesis Testing 

:: content ::
- **Hypothesis**: A proposed explanation for a phenomenon, often involving a relation between two or more variables.
- **Hypothesis testing**: The process of collecting and analyzing data to determine whether there is evidence that supports the hypothesis.

<img src="/images/lecture2/hypothesis.png" alt="hypothesis" class="mx-auto max-h-60 object-contain" />


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Operational definitions: Needed to test hypotheses

:: content ::
- **Operational definitions**: Specify the observations or procedures used to measure or manipulate a variable.
  - Example: Happiness could be operationally defined as "self-reported happiness on a 1-10 scale" or "number of smiles in a 5-minute video""


<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    How could you operationalize musical artist popularity?
  </div>
</div>

<p v-click>

**Answer**: Musical artist popularity could be operationalized as "number of monthly listeners on Spotify" or "social media followers across platforms."

</p>


<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    How could you operationalize math ability?
  </div>
</div>

<p v-click>

**Answer**: Math ability could be operationalized as "score on a standardized math test." 

</p>

---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Operational definitions: They're hard!

:: content ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    One of the biggest challenges in experimental psychology research is coming up with good operational definitions for the variables you want to study.
  </div>
</div>

- Abstract concepts (e.g., intelligence, happiness, anxiety) can be hard to define and measure.
- Poor operational definitions can lead to unreliable or invalid results.

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-2 border-green-300 rounded-lg shadow-md p-4 transform">
    How would you operationalize anxiety in a research study?
  </div>
</div>

</p>

<p v-click>

**Answer**: Anxiety could be operationalized as:
- self-reported anxiety levels on a questionnaire. 
- cortisol levels in saliva samples.
- heart rate during a task.

</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    Each of these definitions captures an aspect of anxiety, but it's unlikely that any one of them fully captures the construct. 
  </div>
</div>

</p>


---
layout: top-title
color: indigo-light
align: lt
---

:: title ::
# Operational definitions: They're hard!

:: content ::

**Answer**: Anxiety could be operationalized as:
- self-reported anxiety levels on a questionnaire. 
- cortisol levels in saliva samples.
- heart rate during a task.

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    Each of these definitions captures an aspect of anxiety, but it's unlikely that any one of them fully captures the construct. 
  </div>
</div>

</p>

<p v-click>
<div class="mt-8 w-full flex justify-center">
  <div class="bg-yellow-100 border-2 border-yellow-300 rounded-lg shadow-md p-4 transform">
    You have to create operational definitions that are well-suited to your specific research question, hypothesis, and context.
  </div>
</div>

</p>

---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Between- vs. Within-Subjects Experimental Designs

:: left ::
**Between-subjects experiment**: 
- An experiment in which participants experience only one level of the IV.
- Comparisons are made between different groups of participants.

**Within-subjects experiments**: 
- An experiment in which participants experience all levels of the IV.
- Comparisons are made within the same participants.

:: right ::

<img src="/images/lecture2/between_within.png" alt="between within" class="mx-auto max-h-96 object-contain" />


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Between- vs. Within-Subjects: Practice

:: left ::

A researcher wants to see if children and adolescents show reduced Stroop interference compared to adults. She recruits 20 children, 20 adolescents, and 20 adults. Each participant completes both the congruent and incongruent Stroop tasks, and the researcher measures their reaction times (RTs) for each condition.

:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    Is this a between-subjects or within-subjects design?
  </div>
</div>

<p v-click>

**Answer**: Trick question! This design is *mixed.* The age group (children, adolescents, adults) is a between-subjects variable, while the Stroop condition (congruent vs. incongruent) is a within-subjects variable.

</p>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    What are the IVs and what are their levels?
  </div>
</div>

<p v-click>

**Answer**: There are two IVs:
1. Age group (between-subjects): Levels = children, adolescents, adults
2. Stroop condition (within-subjects): Levels = congruent, incongruent

</p>


---
layout: top-title-two-cols
color: indigo-light
align: lt-lt-lt
---

:: title ::
# Putting concepts together: Practice

:: left ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    In this study, is age group a discrete or continuous variable?
  </div>
</div>

<p v-click>

**Answer**: Discrete. Age group is categorical (children vs. adults).

</p>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    In this study, is age group a nominal, ordinal, interval, or ratio variable?
  </div>
</div>

<p v-click>

**Answer**: Ordinal. Age group has an inherent order (children are younger than adults), but the difference between groups is not necessarily equal.

</p>


:: right ::

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    How could you change the design to make age a continuous variable?
  </div>
</div>

<p v-click>

**Answer**: You could measure the exact age of each participant (in years) instead of categorizing them into groups (children, adolescents, adults).

</p>

<div class="mt-8 w-full flex justify-center">
  <div class="bg-green-100 border-1 border-green-300 rounded-lg shadow-md p-1 transform">
    Is this a correlational or experimental study?
  </div>
</div>

<p v-click>

**Answer**: Both! The researcher manipulates one of the independent variables (Stroop condition) to observe its effect on the dependent variable (reaction times). However, age group is a naturally occurring variable that is not manipulated, making it correlational in that respect.

</p>




---
layout: cover
color: indigo-light
---

# That’s all for Lecture 2!  
See you next class. Please remember to:
- Fill out the pre-course survey.
- Install R and R Studio before the next lecture.
