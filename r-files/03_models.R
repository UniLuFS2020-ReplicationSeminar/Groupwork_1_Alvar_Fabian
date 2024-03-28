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

# Generate predictions
predictions <- predict(model, newdata = data_prep)

# Create a data frame with original data and predictions
prediction_df <- data.frame(data_prep$econ_satisfaction, data_prep$trust_politicians, predictions)
colnames(prediction_df) <- c("Economic_Satisfaction", "Trust_in_Politicians", "Predicted_Trust")

# Display the first few rows of the prediction data frame
head(prediction_df)

# Plot observed vs. predicted values
ggplot(prediction_df, aes(x = Trust_in_Politicians, y = Predicted_Trust)) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1, color = "red", linetype = "dashed") +
  labs(title = "Observed vs. Predicted Values",
       x = "Observed Trust in Politicians",
       y = "Predicted Trust in Politicians")


## 3. Pearson Correlation
correlation_pearson <- cor(data_prep$econ_satisfaction, data_prep$trust_politicians, method = "pearson")
print(correlation_pearson)
