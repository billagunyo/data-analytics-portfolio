# Health and Activity Data Analysis (N=26)

**Tool:** IBM SPSS Statistics
**Date of Output:** 06-FEB-2025
**Dataset:** DataSet1 ($N=26$ max)
**Scope:** Demographic distribution, correlation of total intake and expenditure, and regression/ANOVA analyses on BMI and activity.

---

## 1. Demographic Distribution

The sample size for demographics is **$N=26$**.

### 1.1 Gender Distribution
| Category | Frequency (N) | Valid Percent (%) |
| :--- | :--- | :--- |
| **Female (F)** | **14** | **53.8%** |
| Male (M) | 11 | 42.3% |
| Missing/Code 1 | 1 | 3.8% |

### 1.2 Ethnicity Distribution
| Category | Frequency (N) | Valid Percent (%) |
| :--- | :--- | :--- |
| **Asian** (including "Asain") | **11** | **42.3%** (9 Asian, 2 Asain) |
| Black | 7 | 26.9% |
| White | 7 | 26.9% |
| Missing/Code 1 | 1 | 3.8% |

---

## 2. H1: Correlation (Calorie Intake vs. Exercise Expenditure)

**Analysis:** Pearson Correlation
**Variables:** TotalCalIntake vs. TotalWalked
**Cases Used:** $N=25$

| Statistic | TotalCalIntake & TotalWalked |
| :--- | :--- |
| **Pearson $r$** | **0.205** |
| **Sig. (2-tailed)** | **0.325** |

**Conclusion:** There is a **weak, positive, and non-significant** relationship between Total Calorie Intake and Total Walking distance ($r=0.205, p=0.325$).

---

## 3. H2: Multiple Regression on BMI

The relationship between **BMI** (Dependent Variable) and measures of **Exercise Expenditure** and **Calorie Intake** was tested in two separate multiple regression models.

### 3.1 Model 1: BMI Predicted by Minutes Walked (Expenditure)
| Statistic | Value |
| :--- | :--- |
| **$R^2$** (Variance Explained) | **0.134** (13.4%) |
| **ANOVA $F$ (Sig.)** | $F(5, 19) = 0.589, p=0.708$ |

**Individual Predictors (Examples):**
| Predictor | Unstd. $\boldsymbol{B}$ | Std. $\boldsymbol{\beta}$ | Sig. ($p$) |
| :--- | :--- | :--- | :--- |
| BananaMinutesWalked | -0.062 | -0.258 | 0.259 |
| BroccoliMinutesWalked | -0.033 | -0.231 | 0.377 |

**Conclusion:** The combined exercise expenditure predictors **do not significantly predict BMI** ($p=0.708$).

### 3.2 Model 2: BMI Predicted by Kcal Intake (Calorie Intake)
| Statistic | Value |
| :--- | :--- |
| **$R^2$** (Variance Explained) | **0.174** (17.4%) |
| **ANOVA $F$ (Sig.)** | $F(5, 19) = 0.802, p=0.562$ |

**Individual Predictors (Examples):**
| Predictor | Unstd. $\boldsymbol{B}$ | Std. $\boldsymbol{\beta}$ | Sig. ($p$) |
| :--- | :--- | :--- | :--- |
| CrispsKcalIntake | 0.040 | 0.282 | 0.272 |
| SpaghettiKcalIntake | 0.010 | 0.184 | 0.429 |

**Conclusion:** The combined calorie intake predictors **do not significantly predict BMI** ($p=0.562$).

---

## 4. H3: Relationship between High-Calorie Food Intake and Physical Activity (ANOVA)

**Analysis:** One-Way UNIANOVA
**Dependent Variable:** TreadmillSpeedWalkinKmPerH
**Factor:** ChocolateBarKcalIntake (Used as a categorical factor)
**Cases Used:** $N=25$

| Source | $df$ | $F$ | Sig. ($p$) | $\boldsymbol{R^2}$ (Adjusted $\boldsymbol{R^2}$) |
| :--- | :--- | :--- | :--- | :--- |
| **ChocolateBarKcalIntake** | **16** | **7.241** | **0.004** | 0.935 (0.806) |

**Conclusion:** There is a **statistically significant relationship** between the categorical level of Chocolate Bar Calorie Intake and Treadmill Walking Speed ($F(16, 8) = 7.241, p=0.004$). The factor explains a **very large** portion of the variance (Adjusted $R^2=0.806$).