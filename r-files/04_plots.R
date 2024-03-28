## Plots and Figures

# Plot the linear model
ggplot(data_prep, aes(x = econ_satisfaction, y = trust_politicians)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Linear Regression Model",
       x = "Economic Satisfaction",
       y = "Trust in Politicians")

# Save the linear model plot to "figures"-folder
ggsave("figures/linear_regression.png")