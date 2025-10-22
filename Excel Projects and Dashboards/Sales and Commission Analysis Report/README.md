# Sales and Commission Analysis Report

## Overview

This report presents a comprehensive statistical and analytical overview of vehicle sales and commission earnings. It includes descriptive statistics, exploratory breakdowns by production year and month, and a regression analysis to understand the relationship between sale price and commission earned.

---

## 1. Descriptive Statistics

| Metric     | Sale Price | Commission Rate | Commission Earned |
|------------|------------|------------------|--------------------|
| Mean       | 31,318.30  | 0.10             | 3,114.05           |
| Mode       | N/A        | N/A              | N/A                |
| Median     | 31,397.50  | 0.10             | 2,926.96           |
| Std. Dev   | 10,435.07  | 0.03             | 1,451.86           |
| Variance   | 108,890,624.23 | 0.00         | 2,107,896.67       |

---

## 2. Exploratory Analysis

### Revenue by Car's Year of Production

| Year | Total Sale Price |
|------|------------------|
| 2020 | 1,641,859        |
| 2021 | 1,013,423        |
| 2022 | 664,458          |
| **Total** | **3,319,740** |

### Total Sales by Month

| Month | Total Sale Price |
|-------|------------------|
| Jan   | 217,650          |
| Feb   | 61,704           |
| Mar   | 149,066          |
| Apr   | 115,722          |
| May   | 305,024          |
| Jun   | 215,888          |
| Jul   | 403,461          |
| Aug   | 335,756          |
| Sep   | 391,834          |
| Oct   | 308,387          |
| Nov   | 373,955          |
| Dec   | 441,293          |
| **Total** | **3,319,740** |

---

## 3. Regression and Correlation Analysis

### Regression Summary

- **Multiple R**: 0.7729  
- **R Square**: 0.5973  
- **Adjusted R Square**: 0.5935  
- **Standard Error**: 930.11  
- **Observations**: 106  

### ANOVA Table

| Source      | df  | SS           | MS           | F          | Significance F |
|-------------|-----|--------------|--------------|------------|----------------|
| Regression  | 1   | 133,465,619.5| 133,465,619.5| 154.28     | 2.88E-22       |
| Residual    | 104 | 89,971,427.43| 865,109.88   |            |                |
| Total       | 105 | 223,437,046.9|              |            |                |

### Coefficients

| Variable    | Coefficient | Std. Error | t Stat | P-value | Lower 95% | Upper 95% |
|-------------|-------------|------------|--------|---------|-----------|-----------|
| Intercept   | -253.66     | 285.79     | -0.89  | 0.3768  | -820.39   | 313.07    |
| Sale Price  | 0.1075      | 0.0087     | 12.42  | 2.88E-22| 0.0904    | 0.1247    |

---

## 4. Residual and Probability Outputs

This section includes predicted commission values, residuals, and percentiles for each observation. These outputs help assess model fit and distribution of errors.

- **Residuals**: Difference between actual and predicted commission earned.
- **Percentile**: Rank position of each observation within the dataset.

---

## 5. Visualization

A scatter diagram is included to visualize the relationship between sale price and commission earned. The regression line illustrates the positive correlation and model fit.

---

## Notes

- Mode values are unavailable due to non-repeating entries.
- The regression model indicates a strong linear relationship between sale price and commission earned.
- Monthly and yearly breakdowns support seasonal and production-year-based sales insights.
