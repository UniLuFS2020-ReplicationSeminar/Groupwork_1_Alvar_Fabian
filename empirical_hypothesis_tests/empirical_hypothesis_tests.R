# empirical_hypothesis_tests

# Find a viable research question
# Do people who are satisfied with present state of economy in country have more trust in politicians?

# Specify an empirical hypothesis addressing the research question.
# People that are more satisfied with present state of economy in country might have more trust in their politicians


#### Test the empirical hypothesis:

## 1. Descriptive Statistics

# Load required libraries
library(dplyr)

# Assuming your data frame is called 'data'

# Check the structure of your data
str(data)

# Check for missing values and count them for each variable
# To Do: variable mapping

# Remove missing values
data <- na.omit(data)

# Descriptive statistics for stfeco
summary(data$stfeco)

# Descriptive statistics for trstplt
summary(data$trstplt)


## 2. Linear Regression

# Load required libraries
library(ggplot2)



