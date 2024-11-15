# Human Activity Recognition Using Smartphones

## Project Overview
This project demonstrates the process of collecting, cleaning, and transforming data into a tidy format for later analysis. The dataset used for this project contains sensor data collected from smartphones to classify human activities. The objective is to clean and tidy the data and prepare it for analysis, following the instructions provided in the project prompt.

## Purpose
The goal of this project is to:
1. Merge training and test datasets.
2. Extract measurements of the mean and standard deviation for each measurement.
3. Use descriptive activity names to label the activities in the dataset.
4. Appropriately label the dataset with descriptive variable names.
5. Create a tidy dataset with the average of each variable for each activity and each subject.

## Data Source
The dataset was sourced from the UCI Machine Learning Repository and contains data collected from the accelerometers of Samsung Galaxy S smartphones. Full details of the dataset can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Data Files
- **`UCI HAR Dataset.zip`**: Contains the raw data, including:
  - `train/` and `test/` directories for training and test datasets.
  - `features.txt`: List of all features (variables).
  - `activity_labels.txt`: Mapping of activity IDs to activity names.
  
## Running the Analysis
To run the analysis:
1. Download the dataset and unzip it.
2. Place the `run_analysis.R` script in the same directory as the unzipped dataset.
3. Run `run_analysis.R` in R or RStudio.

### Script Breakdown
- **Step 1**: Merge the training and test datasets.
- **Step 2**: Extract measurements of the mean and standard deviation.
- **Step 3**: Use descriptive activity names.
- **Step 4**: Label the dataset with descriptive variable names.
- **Step 5**: Create a tidy dataset with the average of each variable per activity and subject.

The output will be saved as `tidy_data.txt`, which contains the tidy dataset.

## Files in the Repository
- **`run_analysis.R`**: R script that performs the entire data cleaning and transformation process.
- **`README.md`**: Provides an overview of the project.
- **`CodeBook.md`**: Describes the dataset, variables, and transformations applied during data cleaning.
- **`tidy_data.txt`**: The final tidy dataset.

---