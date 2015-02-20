The data for project was collected from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
====================================
# Data description

The experiments have been carried out with a group of **30 volunteers** within an age bracket of 19-48 years. Each person performed **six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)** wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
====================================
## Variables

* "Subject" - number of a person to be examined (from 1 to 30)

* "Activity" - one of six types of activities examined: laying, sitting, standing, walking, walking downstairs and walkingupstairs.

* Features:
1. tBodyAcc-meanX	
2. tBodyAcc-meanY	
3. tBodyAcc-meanZ	
4. tBodyAcc-stdX	
5. tBodyAcc-stdY	
6. tBodyAcc-stdZ	
7. tGravityAcc-meanX	
8. tGravityAcc-meanY	
9. tGravityAcc-meanZ	
10. tGravityAcc-stdX	
11. tGravityAcc-stdY	
12. tGravityAcc-stdZ	
13. tBodyAccJerk-meanX	
14. tBodyAccJerk-meanY	
15. tBodyAccJerk-meanZ	
16. tBodyAccJerk-stdX	
17. tBodyAccJerk-stdY	
18. tBodyAccJerk-stdZ	
19. tBodyGyro-meanX	
20. tBodyGyro-meanY	
21. tBodyGyro-meanZ	
22. tBodyGyro-stdX	
23. tBodyGyro-stdY	
24. tBodyGyro-stdZ	
25. tBodyGyroJerk-meanX	
26. tBodyGyroJerk-meanY	
27. tBodyGyroJerk-meanZ	
28. tBodyGyroJerk-stdX	
29. tBodyGyroJerk-stdY	
30. tBodyGyroJerk-stdZ	
31. tBodyAccMag-mean()	
32. tBodyAccMag-std()	
33. tGravityAccMag-mean()	
34. tGravityAccMag-std()	
35. tBodyAccJerkMag-mean()	
36. tBodyAccJerkMag-std()	
37. tBodyGyroMag-mean()	
38. tBodyGyroMag-std()	
39. tBodyGyroJerkMag-mean()	
40. tBodyGyroJerkMag-std()	
41. fBodyAcc-meanX	
42. fBodyAcc-meanY	
43. fBodyAcc-meanZ	
44. fBodyAcc-stdX	
45. fBodyAcc-stdY	
46. fBodyAcc-stdZ	
47. fBodyAccJerk-meanX	
48. fBodyAccJerk-meanY	
49. fBodyAccJerk-meanZ	
50. fBodyAccJerk-stdX	
51. fBodyAccJerk-stdY	
52. fBodyAccJerk-stdZ	
53. fBodyGyro-meanX	
54. fBodyGyro-meanY	
55. fBodyGyro-meanZ	
56. fBodyGyro-stdX	
57. fBodyGyro-stdY	
58. fBodyGyro-stdZ	
59. fBodyAccMag-mean()	
60. fBodyAccMag-std()	
61. fBodyBodyAccJerkMag-mean()	
62. fBodyBodyAccJerkMag-std()	
63. fBodyBodyGyroMag-mean()	
64. fBodyBodyGyroMag-std()	
65. fBodyBodyGyroJerkMag-mean()	
66. fBodyBodyGyroJerkMag-std()

The set of variables that were estimated from these signals are: 

1. `mean()`: Mean value
2. `std()`: Standard deviation

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

====================================

# Average table

In the *average_tidy_data.txt* you can see independent tidy data set with the average of each variable for each activity and each subject.

