The ```run_analysis.R``` script performs data preparation functions per the course assignment instructions

1. The original dataset was downloaded at [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


1. Combine and assign files to variables using rbind() 
    * X_data <- x_train, x_test 
    * Y_data <- y_train, y_test
    * Sub_data <- subject_train, subject_test
  
1. Combine variables into a single data set using cbind()  
    * All_data <- Sub_data, Y_data, X_data

1. Extract mean and standard deviation from each data point and assign to Tidy_data
    * Tidy_data <- All_data (contains "mean" or "std")
    
1. Add descriptive activity names to the dataset
    * All Acc in column’s name replaced by Accelerometer
    * All Gyro in column’s name replaced by Gyroscope
    * All BodyBody in column’s name replaced by Body
    * All Mag in column’s name replaced by Magnitude
    * All start with character f in column’s name replaced by Frequency
    * All start with character t in column’s name replaced by Time

1. Creates a second tidy data set with the average of each variable for each activity and each subject and assign it to Final_data
    * FinalData <- Tidy_data (grouped by subject and activity and summarized by mean)
    
1. Export Final_data to Final_data.txt file.
