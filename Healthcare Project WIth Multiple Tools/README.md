# What Our Habits Reveal About Health

### Project Overview
This project explores how everyday habits and biological factors influence overall health. Using a dataset sourced from Kaggle, the analysis focuses on identifying patterns and relationships between medical indicators such as blood pressure, glucose, BMI, cholesterol, and lifestyle behaviors like smoking, alcohol use, and physical activity.  
The goal is to uncover data-driven insights that can support better preventive healthcare decisions.

---

### Data Source
Dataset: [Healthcare Risk Factors Dataset on Kaggle](https://www.kaggle.com/datasets/abdallaahmed77/healthcare-risk-factors-dataset)  

The dataset is **not included** in this repository to comply with Kaggle’s licensing terms.  
To reproduce this analysis:
1. Download the dataset from the link above.
2. Place the file `dirty_v3_path.csv` in the `/data` folder.

---

### Objectives
- Clean and preprocess the healthcare dataset for analysis.
- Explore trends and distributions of key health and lifestyle factors.
- Identify correlations between medical and behavioral attributes.
- Visualize findings to highlight potential risk patterns.

---

### Tools and Technologies
- **Language:** Python  
- **Libraries:** pandas, seaborn, matplotlib, kagglehub  
- **Environment:** Google Colab  
- **Visualization Tools (optional):** Tableau / Looker Studio  

---

### Key Insights
- **Glucose** and **HbA1c** levels show a strong positive correlation, confirming consistency in blood sugar measures.  
- **Age** correlates with higher **blood pressure** and **cholesterol**, reflecting age-related health risks.  
- **Physical activity** and **diet score** show negative relationships with several risk factors, underscoring the importance of lifestyle habits.  
- Boxplots and distributions revealed notable outliers in BMI and glucose levels, warranting further clinical exploration.
