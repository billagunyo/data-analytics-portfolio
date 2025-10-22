library(dplyr)
library(ggplot2)
library(stats)

# Data Description
summary(adult_dataset)
str(adult_dataset)

# Convert income to a factor
adult_dataset$income <- as.factor(adult_dataset$income)

# Hypothesis 1: Chi-Square Test (Association between Sex and Income)
cross_tab <- table(adult_dataset$sex, adult_dataset$income)
chi_sq_test <- chisq.test(cross_tab)
print(chi_sq_test)

# Hypothesis 2: T-Test (Difference in Hours Worked per Week between Income Groups)
t_test <- t.test(`hours-per-week` ~ income, data = adult_dataset)
print(t_test)

# Hypothesis 3: ANOVA (Effect of Education Level on Hours Worked per Week)
adult_dataset$education <- as.factor(adult_dataset$education)
anova_model <- aov(`hours-per-week` ~ education, data = adult_dataset)
summary(anova_model)

# Regression Analysis: Logistic Regression Predicting Income
adult_dataset$income_binary <- ifelse(adult_dataset$income == ">50K", 1, 0)
logit_model <- glm(income_binary ~ age + `education-num` + `hours-per-week` + `capital-gain`,
                   data = adult_dataset, family = binomial)

# Model Summary
summary(logit_model)

# Assess Model Fit
pseudo_r2 <- 1 - (logit_model$deviance / logit_model$null.deviance)
print(paste("Pseudo R-squared:", round(pseudo_r2, 4)))
