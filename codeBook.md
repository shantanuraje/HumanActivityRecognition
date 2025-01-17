# Data Dictionary : Human Activity Recognition.

* subjectId : Unique Identifier to identify participating subjects.

* Activity : Activity States to be analyzed through accelerometer and gyroscope data.  
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

# Notes : 
* The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. 
* The acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ).
* The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
* Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

# Variables Names : 
* timeBodyAccMean
* timeBodyAccstd
* timeGravityAccMean
* timeGravityAccstd
* timeBodyAccJerkMean
* timeBodyAccJerkstd
* timeBodyGyroMean
* timeBodyGyrostd
* timeBodyGyroJerkMean
* timeBodyGyroJerkstd
* timeBodyAccMagMean
* timeBodyAccMagStdDev
* timeGravityAccMagMean
* timeGravityAccMagStdDev
* timeBodyAccJerkMagMean
* timeBodyAccJerkMagStdDev
* timeBodyGyroMagMean
* timeBodyGyroMagStdDev
* timeBodyGyroJerkMagMean
* timeBodyGyroJerkMagStdDev
* freqBodyAccMean
* freqBodyAccstd
* freqBodyAccJerkMean
* freqBodyAccJerkstd
* freqBodyGyroMean
* freqBodyGyrostd
* freqBodyAccMagMean
* freqBodyAccMagStdDev
* freqBodyBodyAccJerkMagMean
* freqBodyBodyAccJerkMagStdDev
* freqBodyBodyGyroMagMean
* freqBodyBodyGyroMagStdDev
* freqBodyBodyGyroJerkMagMean
* freqBodyBodyGyroJerkMagStdDev

## The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation