## 1. Descriptive statistics

# Descriptive statistics for stfeco
summary(data_prep$econ_satisfaction)

# Descriptive statistics for trstplt
summary(data_prep$trust_politicians)

## 2. Linear Regression

# Load required libraries
library(ggplot2)

# Linear regression model
model <- lm(trust_politicians ~ econ_satisfaction, data = data_prep)

# Summary of the model
summary(model)

