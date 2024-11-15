---
title: "CodeBook"
author: "Ananya Gaur"
date: "2024-11-15"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
### **CodeBook.md**

```markdown
# Codebook for Human Activity Recognition Dataset

## Dataset Overview
The dataset contains sensor data from smartphones, collected to classify six different human activities. The raw dataset is split into training and test datasets. Each observation corresponds to sensor measurements from a smartphone during a specific activity, including accelerometer and gyroscope readings.

### Variables in the Tidy Dataset

- **subject**: The ID of the subject performing the activity (1 to 30).
- **activity**: The activity being performed by the subject. The activities are labeled as follows:
  1. **WALKING**
  2. **WALKING_UPSTAIRS**
  3. **WALKING_DOWNSTAIRS**
  4. **SITTING**
  5. **STANDING**
  6. **LAYING**

- **tBodyAcc.mean...X, tBodyAcc.mean...Y, tBodyAcc.mean...Z**: The mean of the body accelerometer signal in the X, Y, and Z directions.
- **tBodyAcc.std...X, tBodyAcc.std...Y, tBodyAcc.std...Z**: The standard deviation of the body accelerometer signal in the X, Y, and Z directions.
- **tGravityAcc.mean...X, tGravityAcc.mean...Y, tGravityAcc.mean...Z**: The mean of the gravity accelerometer signal in the X, Y, and Z directions.
- **tGravityAcc.std...X, tGravityAcc.std...Y, tGravityAcc.std...Z**: The standard deviation of the gravity accelerometer signal in the X, Y, and Z directions.
- **Other variables**: The dataset includes similar columns for accelerometer and gyroscope measurements, as well as time and frequency domain features, such as:
  - **tBodyGyro.mean...X, tBodyGyro.std...X**, etc.
  - **fBodyAcc.mean...X, fBodyAcc.std...X**, etc.

### Data Transformation and Cleaning

1. **Merging the Training and Test Sets**:
   The training and test datasets were combined to create a single dataset with both training and test observations.

2. **Extracting Mean and Standard Deviation Measurements**:
   Only columns related to the mean (`mean()`) and standard deviation (`std()`) of measurements were retained. These columns provide important information about the variations in sensor data.

3. **Using Descriptive Activity Names**:
   The activity IDs (which ranged from 1 to 6) were replaced with descriptive names corresponding to the six activities.

4. **Labeling the Dataset with Descriptive Variable Names**:
   Column names were cleaned and made more descriptive by replacing abbreviations like "Acc" with "Accelerometer" and "Gyro" with "Gyroscope."

5. **Creating a Tidy Dataset**:
   The tidy dataset was created by grouping the data by subject and activity, and then calculating the mean for each variable within each group.

### Notes on the Data
- The data has been cleaned and reshaped to ensure it meets the tidy data principles: one observation per row, and one variable per column.
- Any missing values (NA) were removed when calculating the mean for each variable.

---

### Activity Labels in the Dataset
- **1**: WALKING
- **2**: WALKING_UPSTAIRS
- **3**: WALKING_DOWNSTAIRS
- **4**: SITTING
- **5**: STANDING
- **6**: LAYING
