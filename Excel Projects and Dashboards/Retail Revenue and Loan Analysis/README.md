# Retail Revenue and Loan Analysis Report

This README summarizes grouped revenue data, calculated fields, and financial modeling tools used to analyze retail performance and loan scenarios. The report includes Excel-based pivot tables, charts, and financial functions such as Goal Seek, Solver, and amortization schedules.

---

## 1. Grouped Revenue Summary

### Monthly Gross Revenue

| Month        | Gross Revenue ($) |
|--------------|-------------------|
| January 2024 | 95,865.00         |
| February 2024| 91,670.00         |
| March 2024   | 95,570.00         |
| **Total**    | **283,105.00**    |

### March Revenue by Category

| Category   | Gross Revenue ($) |
|------------|-------------------|
| Apparel    | 48,210.00         |
| Souvenirs  | 29,135.00         |
| Media      | 18,520.00         |

### Total Revenue by Category

| Category   | Gross Revenue ($) |
|------------|-------------------|
| Apparel    | 141,170.00        |
| Souvenirs  | 82,230.00         |
| Media      | 59,705.00         |
| **Total**  | **283,105.00**    |

### Product-Level Breakdown (Apparel Example)

| Product                | Gross Revenue ($) |
|------------------------|-------------------|
| Hat                    | 2,920.00          |
| Hoodie                 | 45,730.00         |
| T-shirt: Men's         | 17,160.00         |
| T-shirt: Touring Cities| 29,890.00         |
| T-shirt: Unisex        | 13,900.00         |
| T-shirt: Women's       | 18,270.00         |
| T-shirt: Youth         | 13,300.00         |

---

## 2. Calculated Fields

| Retail Price ($) | Markup ($) | Quantity Sold | Gross Revenue ($) |
|------------------|------------|----------------|--------------------|
| 20.00            | 14.75      | 31             | 620.00             |
| 40.00            | 14.75      | 200            | 8,000.00           |
| 30.00            | 22.75      | 247            | 7,410.00           |
| 30.00            | 22.75      | 231            | 6,930.00           |
| 25.00            | 20.00      | 325            | 8,125.00           |
| 35.00            | 28.75      | 315            | 11,025.00          |

---

## 3. Pivot Chart

- **Chart Type**: Bar chart
- **Focus**: Apparel revenue by product
- **Insight**: Hoodies and Touring Cities T-shirts are top performers

---

## 4. Loan and Payment Modeling

### Loan Inputs

| Parameter             | Value         |
|-----------------------|---------------|
| Purchase Price        | 30,000.00     |
| Down Payment          | 2,500.00      |
| APR                   | 6.5%          |
| Years Financed        | 5             |
| Payments per Year     | 12            |
| Amount Financed       | 27,500.00     |
| Monthly Payment       | 538.07        |

### Goal Seek Scenario

| Target Monthly Payment | 550.00        |
| Resulting Purchase Price | 32,447.92   |
| Down Payment            | 5,000.00     |
| APR                     | 7.5%         |

### Solver Scenario

| Purchase Price | 6,125.00 |
| Down Payment   | 5,000.00 |
| APR            | 800.0%   |
| Monthly Payment| 750.00   |

---

## 5. Amortization Schedule

| Payment # | Beginning Balance | Interest Paid | Principal Paid | Ending Balance |
|-----------|-------------------|----------------|----------------|----------------|
| 1         | 99,810.62         | 623.82         | 1,376.18       | 98,434.43      |
| 2         | 98,434.43         | 615.22         | 1,384.78       | 97,049.65      |
| ...       | ...               | ...            | ...            | ...            |

- **Total Payments**: 60
- **APR**: 7.5%
- **Monthly Payment**: 2,000.00

---

## Notes

- Grouped summaries support category-level performance tracking.
- Pivot charts and calculated fields enhance product-level profitability analysis.
- Loan modeling tools (Goal Seek, Solver, amortization) provide flexible financial planning.
- All data and visualizations are structured in Excel for dynamic exploration.