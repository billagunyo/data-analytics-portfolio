# Load required libraries
library(tidyverse)
library(stargazer)
library(lmtest)
library(sandwich)
library(zoo)

# View first few rows of the dataset
head(Anosha_Data)

# Convert all character columns to numeric (prevents coercion issues)
Anosha_Data <- Anosha_Data %>%
  mutate(across(where(is.character), as.numeric))

# Handle missing values using linear interpolation
Anosha_Data <- Anosha_Data %>%
  mutate(across(everything(), ~ifelse(is.na(.), zoo::na.approx(.), .)))

# Ensure Year is properly formatted
Anosha_Data$Year <- as.integer(Anosha_Data$Year)

# Create Trade Openness variable (sum of imports and exports)
Anosha_Data <- Anosha_Data %>%
  mutate(OPEN = IMP + EXP)

# Create dummy variables for major economic events
Anosha_Data <- Anosha_Data %>%
  mutate(OilCrisis = ifelse(Year %in% c(1973, 1974), 1, 0),
         GFC_dummy = ifelse(Year %in% c(2007, 2008, 2009), 1, 0))

# Summary statistics
summary(Anosha_Data)

# Define numeric variables for correlation analysis
numeric_vars <- c("GDPgr", "GFC", "INFL", "POPgr", "GOV", "IMP", "EXP", "OPEN")

# Convert relevant columns to numeric
Anosha_Data[numeric_vars] <- lapply(Anosha_Data[numeric_vars], as.numeric)

# Compute and display correlation matrix
cor_matrix <- cor(Anosha_Data[, numeric_vars], use = "complete.obs")
print(cor_matrix)

# Time Series Plot (All Variables on One Chart)
Anosha_Data %>%
  pivot_longer(cols = where(is.numeric) & -Year, names_to = "Variable", values_to = "Value") %>%
  ggplot(aes(x = Year, y = Value, color = Variable)) +
  geom_line() +
  theme_minimal() +
  labs(title = "Time Series of Economic Growth Variables", x = "Year", y = "Value", color = "Variable")

# Regression Models
model1 <- lm(GDPgr ~ GFC, data = Anosha_Data)
summary(model1)

model2 <- lm(GDPgr ~ GFC + POPgr, data = Anosha_Data)
summary(model2)

model3 <- lm(GDPgr ~ GFC + POPgr + INFL, data = Anosha_Data)
summary(model3)

model4 <- lm(GDPgr ~ GFC + POPgr + INFL + GOV, data = Anosha_Data)
summary(model4)

model5 <- lm(GDPgr ~ GFC + POPgr + INFL + GOV + OPEN, data = Anosha_Data)
summary(model5)

# Include lag of GDP growth
Anosha_Data <- Anosha_Data %>% mutate(GDPgr_lag = lag(GDPgr))

model6 <- lm(GDPgr ~ GDPgr_lag + GFC + POPgr + INFL + GOV + OPEN, data = Anosha_Data, na.action = na.omit)
summary(model6)

# Regression including external shocks (Oil Crisis & Global Financial Crisis)
model_ext <- lm(GDPgr ~ GDPgr_lag + GFC + POPgr + INFL + GOV + OPEN + OilCrisis + GFC_dummy, 
                data = Anosha_Data, na.action = na.omit)
summary(model_ext)

# Display Regression Results
stargazer(model1, model2, model3, model4, model5, model6, model_ext, type = "text",
          title = "Economic Growth Regression Models",
          dep.var.labels = "GDP Growth",
          covariate.labels = c("GFC", "POPgr", "INFL", "GOV", "OPEN", "Lagged GDP Growth", "Oil Crisis", "Global Financial Crisis"),
          star.cutoffs = c(0.1, 0.05, 0.01))

# Check for Autocorrelation
dwtest(model5)  # Durbin-Watson test for model 5
dwtest(model6)  # Durbin-Watson test for model 6

# Correct for Autocorrelation (if detected)
model6_corrected <- coeftest(model6, vcov = NeweyWest(model6))
model_ext_corrected <- coeftest(model_ext, vcov = NeweyWest(model_ext))

# Test for Nonlinearity (Quadratic Terms)
model6_quadratic <- lm(GDPgr ~ GDPgr_lag + GFC + POPgr + INFL + GOV + OPEN + I(GFC^2), data = Anosha_Data, na.action = na.omit)
summary(model6_quadratic)

# Save processed data
write.csv(Anosha_Data, "Processed_Anosha_Data.csv")
