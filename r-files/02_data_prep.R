#### data preparation

# Extract relevant columns
data_prep <- data[c("stfeco", "trstplt")]

# Rename columns
colnames(data_prep) <- c("econ_satisfaction", "trust_politicians")

# Mapping values 77, 88 and 99 to NA
data_prep[data_prep == 77] <- NA
data_prep[data_prep == 88] <- NA
data_prep[data_prep == 99] <- NA

# Delete missing values (NA)
data_prep <- na.omit(data_prep)

# View the data
View(data_prep)

# Save the data to dedicated folder
write.csv(data, "data_prep/data_prep.csv")
