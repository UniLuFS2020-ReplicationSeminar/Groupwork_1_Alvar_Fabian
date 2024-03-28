## Plots and Figures
# Load required libraries
library(ggplot2)


# 1. Plotting a histogram for both variables
par(mfrow=c(1,2)) # Set up a 1x2 grid for plotting

# a. Histogram for econ_satisfaction
hist(data_prep$econ_satisfaction, main="Economic Satisfaction", xlab="Satisfaction", ylab="Frequency", col="skyblue")

# b. Histogram for trust_politicians
hist(data_prep$trust_politicians, main="Trust in Politicians", xlab="Trust Level", ylab="Frequency", col="lightgreen")


# Boxplot 1
ggplot(data_prep, aes(x = factor(econ_satisfaction), y = trust_politicians)) +
  geom_boxplot() +
  labs(x = "Economic Satisfaction", y = "Trust in Politicians") +
  ggtitle("Boxplot of Trust in Politicians by Economic Satisfaction")

# Boxplot 2
ggplot(data_prep, aes(x = factor(trust_politicians), y = econ_satisfaction)) +
  geom_boxplot() +
  labs(x = "Trust in Politicians", y = "Economic Satisfaction") +
  ggtitle("Boxplot of Economic Satisfaction by  Trust in Politicians")

# Heatmap
ggplot(data_prep, aes(x = econ_satisfaction, y = trust_politicians)) +
  geom_bin2d() +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(x = "Economic Satisfaction", y = "Trust in Politicians") +
  ggtitle("Heatmap of Economic Satisfaction vs. Trust in Politicians")


# 2. Plot the linear model
ggplot(data_prep, aes(x = econ_satisfaction, y = trust_politicians)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Linear Regression Model",
       x = "Economic Satisfaction",
       y = "Trust in Politicians")

# Save the linear model plot to "figures"-folder
ggsave("figures/linear_regression.png")