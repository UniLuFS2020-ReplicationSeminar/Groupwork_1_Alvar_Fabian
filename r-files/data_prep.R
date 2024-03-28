#### data preparation

# Extract relevant columns
data <- data[c("stfeco", "trstplt")]

# Save the data to deticated folder
write.csv(data, "data_prep/data_prep.csv")
