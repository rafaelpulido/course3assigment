#Codebook

##The construction and explanation of the variables are as follows (this explanation comes from the original files of the data set):

### " The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

### Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

### Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

### These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag "

##The previous variables were rename as follows

*"subject"
*"activityCode"
*"SubjectActivity"
*"tBodyAccMeanX"
*"tBodyAccMeanY"
*"tBodyAccMeanZ"
*"tBodyAccStandardDeviationX"
*"tBodyAccStandardDeviationY"
*"tBodyAccStandardDeviationZ"
*"tGravityAccMeanX"
*"tGravityAccMeanY"
*"tGravityAccMeanZ"
*"tGravityAccStandardDeviationX"
*"tGravityAccStandardDeviationY"
*"tGravityAccStandardDeviationZ"
*"tBodyAccJerkMeanX"
*"tBodyAccJerkMeanY"
*"tBodyAccJerkMeanZ"
*"tBodyAccJerkStandardDeviationX"
*"tBodyAccJerkStandardDeviationY"
*"tBodyAccJerkStandardDeviationZ"
*"tBodyGyroMeanX"
*"tBodyGyroMeanY"
*"tBodyGyroMeanZ"
*"tBodyGyroStandardDeviationX"
*"tBodyGyroStandardDeviationY"
*"tBodyGyroStandardDeviationZ"
*"tBodyGyroJerkMeanX"
*"tBodyGyroJerkMeanY"
*"tBodyGyroJerkMeanZ"
*"tBodyGyroJerkStandardDeviationX"
*"tBodyGyroJerkStandardDeviationY"
*"tBodyGyroJerkStandardDeviationZ"
*"tBodyAccMagMean"
*"tBodyAccMagStandardDeviation"
*"tGravityAccMagMean"
*"tGravityAccMagStandardDeviation"
*"tBodyAccJerkMagMean"
*"tBodyAccJerkMagStandardDeviation"
*"tBodyGyroMagMean"
*"tBodyGyroMagStandardDeviation"
*"tBodyGyroJerkMagMean"
*"tBodyGyroJerkMagStandardDeviation"
*"fBodyAccMeanX"
*"fBodyAccMeanY"
*"fBodyAccMeanZ"
*"fBodyAccStandardDeviationX"
*"fBodyAccStandardDeviationY"
*"fBodyAccStandardDeviationZ"
*"fBodyAccJerkMeanX"
*"fBodyAccJerkMeanY"
*"fBodyAccJerkMeanZ"
*"fBodyAccJerkStandardDeviationX"
*"fBodyAccJerkStandardDeviationY"
*"fBodyAccJerkStandardDeviationZ"
*"fBodyGyroMeanX"
*"fBodyGyroMeanY"
*"fBodyGyroMeanZ"
*"fBodyGyroStandardDeviationX"
*"fBodyGyroStandardDeviationY"
*"fBodyGyroStandardDeviationZ"
*"fBodyAccMagMean"
*"fBodyAccMagStandardDeviation"
*"fBodyBodyAccJerkMagMean"
*"fBodyBodyAccJerkMagStandardDeviation"
*"fBodyBodyGyroMagMean"
*"fBodyBodyGyroMagStandardDeviation"
*"fBodyBodyGyroJerkMagMean"
*"fBodyBodyGyroJerkMagStandardDeviation"

##The activity code variable values correspond the following description:

*1 for WALKING
*2 for WALKING UPSTAIRS
*3 for WALKING DOWNSTAIRS
*4 for SITTING
*5 for STANDING
*6 for LAYING

##References:

### [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human. Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
