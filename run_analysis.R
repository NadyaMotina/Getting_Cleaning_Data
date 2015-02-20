# 0. Download all the datafiles
# setwd("~/Coursera/R/Cleaning_data")
train_data <- read.table("./data_assignment_2/train/X_train.txt") # dim = 7352*561
train_labels <- read.table("./data_assignment_2/train/y_train.txt") # dim = 7352*1
train_subject <- read.table("./data_assignment_2/train/subject_train.txt") # dim = 7352*1
test_data <- read.table("./data_assignment_2/test/X_test.txt") # dim = 2947*561
test_labels <- read.table("./data_assignment_2/test/y_test.txt") # dim = 2947*1
test_subject <- read.table("./data_assignment_2/test/subject_test.txt") # dim = 2947*1
features <- read.table("./data_assignment_2/features.txt") # dim = 561*2
activities <- read.table("./data_assignment_2/activity_labels.txt") # dim = 6*2

# 1. Merges the training and the test sets to create one data set.
merged_data <- rbind(train_data, test_data)
merged_labels <- rbind(train_labels, test_labels)
merged_subject <- rbind(train_subject, test_subject)
# remove old files to avoid confusion
# rm(train_data, train_labels, train_subject, test_data, test_labels, test_subject)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# View(features)
mean_std_indices <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
merged_data <- merged_data[, mean_std_indices]

# 3. Uses descriptive activity names to name the activities in the data set.
# here we take numbers from merged_labels as indices for activities table and extract names
# then replace the column from merged_labels from numbers to be name strings
merged_labels[,1] <- as.vector(tolower(activities[merged_labels[, 1], 2]))
names(merged_labels) <- "Activity"

# 4. Appropriately labels the data set with descriptive variable names. 
feature_names <- as.vector(features[mean_std_indices, 2])
# make it more readable
names(merged_data) <- gsub("\\(\\)-", "", feature_names)
names(merged_subject) <- "Subject"
# Create a table with all needed data and names
whole_data <- cbind(merged_subject, merged_labels, merged_data)
write.table(whole_data, "whole_data.txt")

# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
library(dplyr)
table <- tbl_df(whole_data)
# Very simple but powerful pipeline!
average_table <- table %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
write.table(average_table, "average_tidy_data.txt")
