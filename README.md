# Getting_and_Cleaning_Data_Course_Project
## This repo is for the JHU Coursera Getting and Cleaning Data course project 
### It contains instructions on how to tidy and clean the Human Activity Recognition dataset located at [HAR Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)



Files:
* ```CodeBook.md``` defines the variables, data, and transformations used to clean the data
* ```run_analysis.R``` contains code that:
  * Merges the training and the test sets to create one data set
  * Extracts only the measurements on the mean and standard deviation for each measurement
  * Uses descriptive activity names to name the activities in the data set
  * Appropriately labels the data set with descriptive variable names
  * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* ```Final_data.txt``` contains the final tidy data set
