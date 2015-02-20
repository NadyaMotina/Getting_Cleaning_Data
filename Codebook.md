The data for project was collected from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

====================================
# Data description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

====================================
# Variables

* "Subject" - number of a person to be examined (from 1 to 30)
* "Activity" - one of six types of activities examined: laying, sitting, standing, walking, walking downstairs and walkingupstairs.
* Features:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag   

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

====================================

# Average table

In the average_tidy_data.txt you can see independent tidy data set with the average of each variable for each activity and each subject.

Source: local data frame [180 x 68]
Groups: Subject

   Subject           Activity tBodyAcc-meanX tBodyAcc-meanY tBodyAcc-meanZ tBodyAcc-stdX
1        1             laying      0.2215982   -0.040513953     -0.1132036   -0.92805647
2        1            sitting      0.2612376   -0.001308288     -0.1045442   -0.97722901
3        1           standing      0.2789176   -0.016137590     -0.1106018   -0.99575990
4        1            walking      0.2773308   -0.017383819     -0.1111481   -0.28374026
5        1 walking_downstairs      0.2891883   -0.009918505     -0.1075662    0.03003534
6        1   walking_upstairs      0.2554617   -0.023953149     -0.0973020   -0.35470803
7        2             laying      0.2813734   -0.018158740     -0.1072456   -0.97405946
8        2            sitting      0.2770874   -0.015687994     -0.1092183   -0.98682228
9        2           standing      0.2779115   -0.018420827     -0.1059085   -0.98727189
10       2            walking      0.2764266   -0.018594920     -0.1055004   -0.42364284
..     ...                ...            ...            ...            ...           ...