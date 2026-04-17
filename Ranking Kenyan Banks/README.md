# Bank Performance Analysis (Kenya) using PCA

## Overview
This project presents a data-driven analysis of commercial banks in Kenya using publicly available data from the Central Bank of Kenya (CBK). The objective is to construct a composite Bank Strength Index and rank banks from strongest to weakest based on multiple financial and operational indicators.

## Objectives
- Evaluate overall bank performance using quantitative data
- Combine multiple indicators into a single ranking metric
- Identify the strongest and weakest banks
- Demonstrate the use of Principal Component Analysis (PCA)

## Methodology

### Data Cleaning
- Removed observations with missing or invalid bank names
- Converted financial variables to numeric format
- Handled missing values using median imputation
- Excluded rows with excessive missing data

### Feature Selection
The following variables were included:
- Total assets
- Gross loans
- Customer deposits
- Capital and shareholder funds
- Profit before tax
- Non-performing loans
- Market share
- Number of branches

These variables capture size, profitability, risk, market position, and accessibility.

### Data Transformation
- Applied log transformation (log(1 + x)) to financial variables to reduce skewness
- Standardised all variables to ensure equal weighting

### Principal Component Analysis
- PCA was applied to reduce dimensionality
- The first principal component (PC1) was extracted
- PC1 explains approximately 69% of total variance
- PC1 was used as the Bank Strength Index

### Ranking
- Banks were ranked using the Bank Strength Index
- The index direction was adjusted so that higher values indicate stronger banks

## Key Findings
- KCB Bank Kenya ranked as the strongest bank
- Followed by Co-operative Bank and Equity Bank
- The results align with known market leaders

## Limitations
- Based only on quantitative financial data
- Does not include customer experience, transaction costs, or loan terms
- Absolute non-performing loan values may introduce size bias

## Project Structure
├── BankData.xlsx
├── analysis.Rmd
├── README.md

## How to Run

Clone the repository:
git clone https://github.com/yourusername/bank-analysis.git


Install required packages:
```r
install.packages(c("readxl", "knitr", "ggplot2"))

Run the analysis:

rmarkdown::render("analysis.Rmd")