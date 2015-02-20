# Getting and Cleaning Data Coursera

# ==========Course Project==========

This repository includes code, its output and all data for Getting and Cleaning Data Coursera Assignment. 

====================================

The data for project was collected from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The script run_analysis.R:
* 0. Download all the datafiles, using read.table.

Create tables train_data, train_labels, train_subject, test_data, test_labels, test_subject, features and activities.

* 1. Merge the training and the test sets using rbind to create one data set.

* 2. Extract only the measurements on the mean and standard deviation for each measurement.

Search for "mean" and "std" in features column by using grep. Create a vector with indices. Then take merged_data with only these indices.

* 3. Use descriptive activity names to name the activities in the data set.

Here we take numbers from merged_labels as indices for activities table and extract names, then replace the column from merged_labels from numbers to be name strings. 

* 4. Appropriately labels the data set with descriptive variable names. 

Make it more readable.
Create a table with all needed data and names and write it to a separate txt-file "whole_data.txt".

* 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. 

Install library dplyr, make a more usable table, then group it by subject and activity and calculate a mean of each group (by using summarise_each). 

Write this table into a new txt-file "average_tidy_data.txt".

====================================

How to run the code:

* Clone this repository (https://github.com/rfoxfa/Getting_and_Cleaning_Data) to your local computer. 
* Set working directory to be the folder where you cloned this repository.
* Run the code "run_analysis.R" by this command:

source("run_analysis.R")

* Type "View(average_table)" to see the results.