# Step 1: Download and unzip the dataset
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "dataset.zip")
unzip("dataset.zip")

# Set working directory to the unzipped data folder
setwd("UCI HAR Dataset")
# Load data
features <- read.table("features.txt")[, 2]
activity_labels <- read.table("activity_labels.txt", col.names = c("id", "activity"))

# Load training data
train_x <- read.table("train/X_train.txt", col.names = features)
train_y <- read.table("train/y_train.txt", col.names = "activity")
train_subject <- read.table("train/subject_train.txt", col.names = "subject")

# Load test data
test_x <- read.table("test/X_test.txt", col.names = features)
test_y <- read.table("test/y_test.txt", col.names = "activity")
test_subject <- read.table("test/subject_test.txt", col.names = "subject")

# Combine training and test data
data_x <- rbind(train_x, test_x)
data_y <- rbind(train_y, test_y)
data_subject <- rbind(train_subject, test_subject)

# Combine into one dataset
merged_data <- cbind(data_subject, data_y, data_x)
# Extract only mean and standard deviation columns
# Adjust the grep pattern to correctly capture 'mean' and 'std' columns
mean_std_columns <- grep("mean\\.|std\\.", names(merged_data), value = TRUE)

# Select the relevant columns: 'subject', 'activity', and the mean/std columns
selected_columns <- c("subject", "activity", mean_std_columns)

# Filter the data
filtered_data <- merged_data[, selected_columns]

filtered_data$activity <- activity_labels[filtered_data$activity, "activity"]
# Clean up variable names
names(filtered_data) <- gsub("^t", "Time", names(filtered_data))
names(filtered_data) <- gsub("^f", "Frequency", names(filtered_data))
names(filtered_data) <- gsub("Acc", "Accelerometer", names(filtered_data))
names(filtered_data) <- gsub("Gyro", "Gyroscope", names(filtered_data))
names(filtered_data) <- gsub("Mag", "Magnitude", names(filtered_data))
names(filtered_data) <- gsub("BodyBody", "Body", names(filtered_data))
# Create a tidy dataset with averages
library(dplyr)
# Create a tidy dataset with the average of each variable for each subject and activity
# Create a tidy dataset with the average of each variable for each subject and activity
tidy_data <- filtered_data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), ~mean(. , na.rm = TRUE)))

# View the first few rows of the tidy dataset
head(tidy_data)

# Write the tidy dataset to a file
write.table(tidy_data, "C:/Users/hp/Downloads/tidy_data1.txt", row.names = FALSE)
