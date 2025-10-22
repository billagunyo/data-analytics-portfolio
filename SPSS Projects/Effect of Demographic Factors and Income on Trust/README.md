# Effect of Demographic Factors and Income on Trust

**Tool:** IBM SPSS Statistics
**Date of Analysis:** 06-FEB-2025
**Dataset:** DataSet1
**Dependent Variable (DV):** Trust_Total (Scale score, Range 11.00 to 59.00)
**Independent Variables (IVs):** Ethnicity (Factor), Income (Factor)
**Initial Sample Size:** $N = 496$
**Final Analysis Sample Size:** $N = 489$ (After filtering by `Attention_Check = 3`)

---

## 1. Data Cleaning and Sample Demographics

### 1.1 Data Filter
A filter was applied to retain only participants who passed the attention check (`Attention_Check = 3`), resulting in **489** valid cases for analysis.

### 1.2 Factor Levels and Counts ($N=489$)
| Factor | Level Label | $N$ |
| :--- | :--- | :--- |
| **Ethnicity** | White British | **470** |
| | Other | 8 |
| | Black | 7 |
| | Asian | 4 |
| **Income** | £12,501 - £50,000 | **276** |
| | None - < £12,500 | 107 |
| | £50,001+ | 106 |

---

## 2. Descriptive Statistics: Trust_Total by Group

The overall mean **Trust\_Total** score for the filtered sample is **35.53** ($\text{SD}=10.87$).

### 2.1 Overall Trust by Income Level
(Marginal Means across all Ethnicities)
| Income Level | Mean Trust Score | $N$ |
| :--- | :--- | :--- |
| **£50,001+** | **46.43** | 106 |
| £12,501 - £50,000 | 33.77 | 276 |
| None - < £12,500 | 29.28 | 107 |

### 2.2 Trust by Ethnicity and Income (Selected Groups)
| Ethnicity | Income Level | Mean Trust Score | $N$ |
| :--- | :--- | :--- | :--- |
| White British | £50,001+ | **46.32** | 103 |
| White British | None - < £12,500 | 29.14 | 100 |
| Black | £50,001+ | **48.50** | 2 |
| Asian | £50,001+ | **54.00** | 1 |

---

## 3. Two-Way ANOVA Results Summary

**Analysis:** UNIANOVA (Two-Way Factorial ANOVA)
**Dependent Variable:** Trust_Total
**Model Fit:** $R^2 = 0.312$ (Adjusted $R^2 = 0.297$), $\text{Sig.} < 0.001$.

### 3.1 Assumptions Check
* **Levene's Test of Equality of Error Variances:** Assumption **violated** (Based on Mean: $F(8, 478) = 3.822, \boldsymbol{p < 0.001}$).

### 3.2 Tests of Between-Subjects Effects ($\alpha=0.05$)
| Source | Sum of Squares (Type III) | $df$ | $F$ | Sig. ($p$) | Partial Eta Squared ($\eta_p^2$) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Income** | 1470.485 | 2 | **8.855** | **< .001** | **.036** |
| **Ethnicity** | 160.590 | 3 | 0.645 | 0.587 | .004 |
| **Ethnicity * Income** | 239.913 | 5 | 0.578 | 0.717 | .006 |

* **Main Effect of Income:** **Statistically Significant** ($F(2, 478) = 8.855, \boldsymbol{p < .001}$).
* **Main Effect of Ethnicity:** **Not Significant** ($F(3, 478) = 0.645, p = 0.587$).
* **Interaction Effect:** **Not Significant** ($F(5, 478) = 0.578, p = 0.717$).

### 3.3 Post Hoc Analysis (Bonferroni) for Income
Since the main effect of Income was significant, all pairwise comparisons were conducted and found to be **statistically significant** ($p < 0.001$ for all pairs).

| Comparison (Higher Group Mean - Lower Group Mean) | Mean Difference |
| :--- | :--- |
| **£50,001+ vs. None - < £12,500** | **17.15** |
| **£50,001+ vs. £12,501 - £50,000** | **12.66** |
| £12,501 - £50,000 vs. None - < £12,500 | 4.49 |

**Conclusion:** Higher income is significantly associated with higher total trust scores.