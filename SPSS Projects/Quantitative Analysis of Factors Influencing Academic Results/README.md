# Quantitative Analysis of Factors Influencing Academic Results
Author: Bill  
Tool: IBM SPSS Statistics  
Date of Output: 06-NOV-2024  
Dataset: DataSet1 (N = 649)  
Missing Value Handling: User-defined missing values treated as missing  
Split File / Weight / Filter: None applied  

## Overview
This project investigates the impact of demographic and behavioral factors on academic performance using independent samples t-tests and simple linear regressions. The analysis was conducted in SPSS and includes effect size estimation and correlation diagnostics.

---

## Task 1: Independent Samples T-Tests

### 1.1 Gender Differences in Results
- **Groups Compared**: Male (n=266) vs Female (n=383)
- **Test Used**: Independent samples t-test
- **Result**: Significant difference in mean scores (t(647) = -3.321, p < .01)
- **Effect Sizes**:
  - Cohen’s d = -0.265
  - Hedges’ g = -0.265
  - Glass’s delta = -0.272

### 1.2 Relationship Status and Results
- **Groups Compared**: In romantic relationship (n=239) vs Not in relationship (n=410)
- **Test Used**: Independent samples t-test
- **Result**: Significant difference in mean scores (t(647) = -2.323, p < .05)
- **Effect Sizes**:
  - Cohen’s d = -0.189
  - Hedges’ g = -0.189
  - Glass’s delta = -0.203

---

## Task 2: Regression Analysis

### 2.1 Correlation Matrix
- **Variables**: Result, Age, Lectures, Tutorials
- **Significant Correlations**:
  - Result vs Age: r = -0.107**
  - Result vs Lectures: r = -0.092*
  - Result vs Tutorials: r = -0.084*

### 2.2 Simple Linear Regressions

#### 2.2.1 Age → Result
- **Model Summary**: R² = 0.011, F(1,647) = 7.478, p = .006
- **Coefficient**: B = -1.419, β = -0.107

#### 2.2.2 Lectures → Result
- **Model Summary**: R² = 0.008, F(1,647) = 5.496, p = .019
- **Coefficient**: B = -0.319, β = -0.092

#### 2.2.3 Tutorials → Result
- **Model Summary**: R² = 0.007, F(1,647) = 4.618, p = .032
- **Coefficient**: B = -0.545, β = -0.084

---

## Syntax Summary

### T-Test (Gender)
```spss
T-TEST GROUPS=Gender(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=Result
  /ES DISPLAY(TRUE)
  /CRITERIA=CI(.95).