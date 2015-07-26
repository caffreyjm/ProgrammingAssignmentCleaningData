#Code Book for Cleaning Data Programming Assignment 
##Experimental Description:
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
>Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
>smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
>acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the 
>data manually. 
>The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the 
>training data and 30% the test data.

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width 
>sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and 
>body motion 
>components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is 
>assumed to have 
>only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features 
>was obtained by 
>calculating variables from the time and frequency domain.

For more details of the experiment see

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Data Description 
This information was downloaded from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# and 
processed using
run_analysis.R to create a tidy data set with the file name specified.  The dataset contains for each activity by each 
subject the mean for
each sample of the features that are mean acceleration and std deviation of the mean acceleration.

###Processing description
>The features (columns) selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ 
>and tGyro-XYZ. 
>These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
>Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
>remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
>(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
>Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals 
>were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
>fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
>(Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Columns 
1. Activity
1. Source id
1. tBodyAcc-mean()-X
1. tBodyAcc-mean()-Y
1. tBodyAcc-mean()-Z
1. tBodyAcc-std()-X
1. tBodyAcc-std()-Y
1. tBodyAcc-std()-Z
1. tGravityAcc-mean()-X
1. tGravityAcc-mean()-Y
1. tGravityAcc-mean()-Z
1. tGravityAcc-std()-X
1. tGravityAcc-std()-Y
1. tGravityAcc-std()-Z
1. tBodyAccJerk-mean()-X
1. tBodyAccJerk-mean()-Y
1. tBodyAccJerk-mean()-Z
1. tBodyAccJerk-std()-X
1. tBodyAccJerk-std()-Y
1. tBodyAccJerk-std()-Z
1. tBodyGyro-mean()-X
1. tBodyGyro-mean()-Y
1. tBodyGyro-mean()-Z
1. tBodyGyro-std()-X
1. tBodyGyro-std()-Y
1. tBodyGyro-std()-Z
1. tBodyGyroJerk-mean()-X
1. tBodyGyroJerk-mean()-Y
1. tBodyGyroJerk-mean()-Z
1. tBodyGyroJerk-std()-X
1. tBodyGyroJerk-std()-Y
1. tBodyGyroJerk-std()-Z
1. tBodyAccMag-mean()
1. tBodyAccMag-std()
1. tGravityAccMag-mean()
1. tGravityAccMag-std()
1. tBodyAccJerkMag-mean()
1. tBodyAccJerkMag-std()
1. tBodyGyroMag-mean()
1. tBodyGyroMag-std()
1. tBodyGyroJerkMag-mean()
1. tBodyGyroJerkMag-std()
1. fBodyAcc-mean()-X
1. fBodyAcc-mean()-Y
1. fBodyAcc-mean()-Z
1. fBodyAcc-std()-X
1. fBodyAcc-std()-Y
1. fBodyAcc-std()-Z
1. fBodyAccJerk-mean()-X
1. fBodyAccJerk-mean()-Y
1. fBodyAccJerk-mean()-Z
1. fBodyAccJerk-std()-X
1. fBodyAccJerk-std()-Y
1. fBodyAccJerk-std()-Z
1. fBodyAccJerk-mad()-X
1. fBodyGyro-mean()-X
1. fBodyGyro-mean()-Y
1. fBodyGyro-mean()-Z
1. fBodyGyro-std()-X
1. fBodyGyro-std()-Y
1. fBodyGyro-std()-Z
1. fBodyAccMag-mean()
1. fBodyAccMag-std()
1. fBodyBodyGyroMag-mean()
1. fBodyBodyGyroMag-std()

