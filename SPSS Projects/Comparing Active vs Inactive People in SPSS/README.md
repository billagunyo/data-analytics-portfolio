# Independent-Samples T-Test: Active vs. Inactive Group Comparison

**Tool:** IBM SPSS Statistics
**Date of Output:** 08-APR-2025 17:36:32
**Dataset:** DataSet0 (N = 32)
**Groups:** 'Active' (16 cases) vs. 'Inactive' (16 cases)
**Missing Value Handling:** User-defined missing values treated as missing. Cases used: Listwise for each analysis.
**Filter / Weight / Split File:** None applied

---

## 1. Overview
This project executes an Independent-Samples T-Test to compare the means of seven physiological and activity-related variables between two independent groups: **'Active'** and **'Inactive'**. The analysis includes Levene's Test for Equality of Variances and reports effect sizes.

---

## 2. Variables Tested
The following seven variables were compared between the 'Active' and 'Inactive' groups:

| Variable | Unit | Type |
| :--- | :--- | :--- |
| **Stature** | cm | Anthropometric |
| **Age** | y | Demographic |
| **Mass** | kg | Anthropometric |
| **Leisure time MET h/day** | MET h/day | Activity |
| **Knee extension force** | N | Strength |
| **Muscle cross sectional area** | $cm^2$ | Physiological |
| **Voluntary Activation** | % of max | Neuromuscular |

---

## 3. Key Group Statistics

| Variable | Group | N | Mean | Std. Deviation | Std. Error Mean |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Stature (cm)** | Active | 16 | 172.3219 | 11.68928 | 2.92232 |
| | Inactive | 16 | 172.8487 | 9.59525 | 2.39881 |
| **Age (y)** | Active | 16 | 61.4250 | 7.06720 | 1.76680 |
| | Inactive | 16 | 61.0544 | 8.05726 | 2.01431 |
| **Mass (kg)** | Active | 16 | 73.0600 | 12.64148 | 3.16037 |
| | Inactive | 16 | 80.8069 | 13.51511 | 3.37878 |
| **Leisure time MET h/day** | Active | 16 | 8.9800 | 2.58406 | .64602 |
| | Inactive | 16 | 1.8806 | 1.13555 | .28389 |
| **Knee extension force (N)** | Active | 16 | 509.5313 | 109.79774 | 27.44944 |
| | Inactive | 16 | 425.3731 | 83.98105 | 20.99526 |
| **Muscle cross sectional area ($cm^2$)**| Active | 16 | 122.3119 | 25.53508 | 6.38377 |
| | Inactive | 16 | 116.9950 | 23.25594 | 5.81399 |
| **Voluntary Activation (% of max)**| Active | 16 | 86.2137 | 4.02683 | 1.00671 |
| | Inactive | 16 | 82.9875 | 3.64870 | .91217 |

---

## 4. Independent Samples T-Test Results

### 4.1 Significant Differences ($p < 0.05$)
The 'Active' and 'Inactive' groups show statistically significant differences for the following variables:

| Variable | Levene's Test (Sig.) | Equal Variances Decision | $t$-value |
| :--- | :--- | :--- | :--- |
| **Leisure time MET h/day** | **.004** | Not Assumed | 10.061 |
| **Knee extension force (N)** | .226 | Assumed | 2.435 |
| **Voluntary Activation (% of max)** | .591 | Assumed | 2.375 |

**Note:** For **Leisure time MET h/day**, the assumption of equal variances was violated (Levene's Sig. < 0.05), so the "Equal variances not assumed" row's $t$-statistic is used. For the other two variables, the assumption held (Levene's Sig. > 0.05), so the "Equal variances assumed" row is used. All three showed significant $p$-values (not explicitly shown but implied by the effect sizes and $t$-values for $N=32$ at $\alpha=0.05$).

### 4.2 Effect Sizes (Cohen's $d$)
Reported below are **Cohen's $d$** estimates, with large effects indicated by $|d| \ge 0.8$:

| Variable | Cohen's $d$ (Point Estimate) | Interpretation (Approximate) |
| :--- | :--- | :--- |
| **Leisure time MET h/day** | **3.557** | **Very Large** (Active > Inactive) |
| **Knee extension force (N)** | **0.861** | **Large** (Active > Inactive) |
| **Voluntary Activation (% of max)** | **0.840** | **Large** (Active > Inactive) |
| Mass (kg) | -0.592 | Moderate (Inactive > Active) |
| Muscle cross sectional area ($cm^2$) | 0.218 | Small (Active > Inactive) |
| Stature (cm) | -0.049 | Negligible |
| Age (y) | 0.049 | Negligible |

---

## 5. Syntax Summary

### T-Test Execution
```spss
T-TEST GROUPS=Group('Active' 'Inactive')
  /MISSING=ANALYSIS
  /VARIABLES=Staturecm Agey Masskg LeisuretimeMEThday KneeextensionforceN
    Musclecrosssectionalareacm2 VoluntaryActivationofmax
  /ES DISPLAY(TRUE)
  /CRITERIA=CI(.95).