# Find a viable research question
# Do people who are satisfied with present state of economy in country have more trust in politicians?

# Specify an empirical hypothesis addressing the research question.
# People that are more satisfied with present state of economy in country might have more trust in their politicians

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
