# Descriptive Analysis of Demographic and Health Variables
Author: Bill  
Tool: IBM SPSS Statistics  
Date of Output: 25-OCT-2024  
Dataset: DataSet1 (N = 10)  
Missing Value Handling: User-defined missing values treated as missing  
Split File / Weight / Filter: None applied  

## Overview
This project summarizes key demographic and health-related variables using descriptive statistics, frequency distributions, and conditional summaries. The analysis was conducted in SPSS and includes cross-tabulations and group-wise comparisons.

---

## Task 1: Descriptive Statistics

### 1.1 Continuous Variables
**Variables**: Age, Medication  
**Statistics Generated**: Mean, Standard Deviation, Variance, Minimum, Maximum  

| Variable   | N  | Min | Max | Mean  | Std. Dev | Variance |
|------------|----|-----|-----|-------|----------|----------|
| Age        | 10 | 19  | 61  | 36.10 | 12.106   | 146.544  |
| Medication | 10 | 9   | 19  | 14.00 | 3.559    | 12.667   |

### 1.2 Categorical Variables
**Variables**: Language, Marital Status, Smoker  
**Statistics Generated**: Frequency, Percent, Valid Percent, Cumulative Percent  

#### Language Distribution
- English: 2 (20%)
- French: 2 (20%)
- German: 3 (30%)
- Spanish: 1 (10%)
- Swahili: 2 (20%)

#### Marital Status Distribution
- Divorced: 2 (20%)
- Married: 3 (30%)
- Separated: 1 (10%)
- Single: 4 (40%)

#### Smoking Status
- No: 6 (60%)
- Yes: 4 (40%)

---

## Task 2: Conditional Summaries

### 2.1 Married Smokers
**Analysis**: Crosstabulation of Marital Status × Smoker  
**Result**: 1 married person is a smoker

### 2.2 Average Age of French Speakers
**Analysis**: Grouped Means of Age by Language  
**Result**: Mean age for French speakers = 37.00 (n = 2)

### 2.3 Maximum Medication for Single People
**Analysis**: Grouped Maximum of Medication by Marital Status  
**Result**: Maximum medication among single individuals = 16

---

## Syntax Summary

### Descriptives (Age, Medication)
```spss
DESCRIPTIVES VARIABLES=AGE MEDICATION
  /STATISTICS=MEAN STDDEV VARIANCE MIN MAX.