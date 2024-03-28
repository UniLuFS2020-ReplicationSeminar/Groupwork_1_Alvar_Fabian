## 1. Descriptive statistics

# Descriptive statistics for stfeco
summary(data_prep$econ_satisfaction)

# Descriptive statistics for trstplt
summary(data_prep$trust_politicians)

## 2. Linear Regression

# Linear regression model
model <- lm(trust_politicians ~ econ_satisfaction, data = data_prep)

# Summary of the model
summary(model)

## 3. Pearson Correlation
correlation_pearson <- cor(data_prep$econ_satisfaction, data_prep$trust_politicians, method = "pearson")
print(correlation_pearson)
