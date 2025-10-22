# 📊 Workforce Distribution and Educational Attainment Analysis

## 📘 README

### 📁 Overview
This workbook provides a statistical analysis of employment distribution by education level, gender-based income disparities, and age-income relationships. It includes contingency tables, inferential tests (Chi-Square, ANOVA, t-Test), and regression modeling based on a dataset of 30,162 observations.

---

### 📂 Contents

#### 1. Employment Sector vs. Education Level
- **Actual Values**: Observed counts of individuals across employment types segmented by education level.
- **Expected Values**: Theoretical frequencies assuming independence between education and employment type.
- **Chi-Squared Test**: Evaluates independence between education level and employment sector. *(Note: χ² = 0 may indicate a placeholder or calculation error.)*

#### 2. Gender-Based Income Analysis
- **ANOVA (Single Factor)**:
  - Compares mean income between male and female groups.
  - Result: Significant difference (F = 1704.26, p < 0.001).
- **t-Test (Equal Variance)**:
  - Mean income: Female = 36.93, Male = 42.85.
  - Result: Statistically significant difference (t = -41.28, p < 0.001).

#### 3. Age vs. Income Regression
- **Simple Linear Regression**:
  - Model: income = 37.37 + 0.093 × age
  - R² = 0.0103 → weak positive correlation.
  - p < 0.001 → statistically significant.

---

### Key Insights
- Higher education correlates with employment in government and professional sectors.
- Males earn significantly more than females on average.
- Age has a modest but statistically significant effect on income.

---

### 📝 Notes
- Validate Chi-Square computation; a zero value may indicate missing logic.
- All statistical tests assume standard parametric conditions.
- Use results for workforce planning, diversity audits, and policy evaluation.

---

### 🔧 Usage
This workbook is intended for:
- Organizational analysts
- HR strategists
- Academic researchers
- Policy developers

For best results, interpret findings in context with industry benchmarks and demographic data.
