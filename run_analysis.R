# Get all data sets and merge into single set
X_data <- rbind(x_train, x_test)
Y_data <- rbind(y_train, y_test)
Sub_data <- rbind(subject_train, subject_test)
All_data <- cbind(Sub_data, Y_data, X_data)

# Get mean and standard deviation columns from All_data set and labels data set
# with descriptive variable names
Tidy_data <- All_data %>% select(subject, code, contains("mean"), contains("std"))
Tidy_data$code <- activities[Tidy_data$code, 2]
names(Tidy_data)[2] = "activity"
names(Tidy_data)<-gsub("Acc", "Accelerometer", names(Tidy_data))
names(Tidy_data)<-gsub("Gyro", "Gyroscope", names(Tidy_data))
names(Tidy_data)<-gsub("BodyBody", "Body", names(Tidy_data))
names(Tidy_data)<-gsub("Mag", "Magnitude", names(Tidy_data))
names(Tidy_data)<-gsub("^t", "Time", names(Tidy_data))
names(Tidy_data)<-gsub("^f", "Frequency", names(Tidy_data))
names(Tidy_data)<-gsub("tBody", "TimeBody", names(Tidy_data))
names(Tidy_data)<-gsub("-mean()", "Mean", names(Tidy_data), ignore.case = TRUE)
names(Tidy_data)<-gsub("-std()", "STD", names(Tidy_data), ignore.case = TRUE)
names(Tidy_data)<-gsub("-freq()", "Frequency", names(Tidy_data), ignore.case = TRUE)
names(Tidy_data)<-gsub("angle", "Angle", names(Tidy_data))
names(Tidy_data)<-gsub("gravity", "Gravity", names(Tidy_data))

# Create second, independent tidy data set with 
# the average of each variable for each activity/subject
Final_data <- Tidy_data %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(Final_data, "Final_data.txt", row.name=FALSE)