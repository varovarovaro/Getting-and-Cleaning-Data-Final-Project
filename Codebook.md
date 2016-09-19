#Codebook

## resulting dataset from `run_analysis.R`
In the first column, "subject" identifies by ID number the 30 participants in the experiment.
The second and third column, "activity" and "activitylabel", describe the six different activities done in the experiment: by number and by description. The following variables describe different indicators.

For more information regarding the experiment please read: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The resulting dataset has includes the following variables.
*  subject
*  activitylabel
*  activity
*  Time.BodyAcceleration.Mean...X
*  Time.BodyAcceleration.Mean...Y
*  Time.BodyAcceleration.Mean...Z
*  Time.BodyAcceleration.StandardDeviation...X
*  Time.BodyAcceleration.StandardDeviation...Y
*  Time.BodyAcceleration.StandardDeviation...Z
*  Time.GravityAcceleration.Mean...X
*  Time.GravityAcceleration.Mean...Y
*  Time.GravityAcceleration.Mean...Z
*  Time.GravityAcceleration.StandardDeviation...X
*  Time.GravityAcceleration.StandardDeviation...Y
*  Time.GravityAcceleration.StandardDeviation...Z
*  Time.BodyAccelerationJerk.Mean...X
*  Time.BodyAccelerationJerk.Mean...Y
*  Time.BodyAccelerationJerk.Mean...Z
*  Time.BodyAccelerationJerk.StandardDeviation...X
*  Time.BodyAccelerationJerk.StandardDeviation...Y
*  Time.BodyAccelerationJerk.StandardDeviation...Z
*  Time.BodyGyro.Mean...X
*  Time.BodyGyro.Mean...Y
*  Time.BodyGyro.Mean...Z
*  Time.BodyGyro.StandardDeviation...X
*  Time.BodyGyro.StandardDeviation...Y
*  Time.BodyGyro.StandardDeviation...Z
*  Time.BodyGyroJerk.Mean...X
*  Time.BodyGyroJerk.Mean...Y
*  Time.BodyGyroJerk.Mean...Z
*  Time.BodyGyroJerk.StandardDeviation...X
*  Time.BodyGyroJerk.StandardDeviation...Y
*  Time.BodyGyroJerk.StandardDeviation...Z
*  Time.BodyAccelerationMagnitude.Mean..
*  Time.BodyAccelerationMagnitude.StandardDeviation..
*  Time.GravityAccelerationMagnitude.Mean..
*  Time.GravityAccelerationMagnitude.StandardDeviation..
*  Time.BodyAccelerationJerkMagnitude.Mean..
*  Time.BodyAccelerationJerkMagnitude.StandardDeviation..
*  Time.BodyGyroMagnitude.Mean..
*  Time.BodyGyroMagnitude.StandardDeviation..
*  Time.BodyGyroJerkMagnitude.Mean..
*  Time.BodyGyroJerkMagnitude.StandardDeviation..
*  Frequency.BodyAcceleration.Mean...X
*  Frequency.BodyAcceleration.Mean...Y
*  Frequency.BodyAcceleration.Mean...Z
*  Frequency.BodyAcceleration.StandardDeviation...X
*  Frequency.BodyAcceleration.StandardDeviation...Y
*  Frequency.BodyAcceleration.StandardDeviation...Z
*  Frequency.BodyAcceleration.MeanFrequency...X
*  Frequency.BodyAcceleration.MeanFrequency...Y
*  Frequency.BodyAcceleration.MeanFrequency...Z
*  Frequency.BodyAccelerationJerk.Mean...X
*  Frequency.BodyAccelerationJerk.Mean...Y
*  Frequency.BodyAccelerationJerk.Mean...Z
*  Frequency.BodyAccelerationJerk.StandardDeviation...X
*  Frequency.BodyAccelerationJerk.StandardDeviation...Y
*  Frequency.BodyAccelerationJerk.StandardDeviation...Z
*  Frequency.BodyAccelerationJerk.MeanFrequency...X
*  Frequency.BodyAccelerationJerk.MeanFrequency...Y
*  Frequency.BodyAccelerationJerk.MeanFrequency...Z
*  Frequency.BodyGyro.Mean...X
*  Frequency.BodyGyro.Mean...Y
*  Frequency.BodyGyro.Mean...Z
*  Frequency.BodyGyro.StandardDeviation...X
*  Frequency.BodyGyro.StandardDeviation...Y
*  Frequency.BodyGyro.StandardDeviation...Z
*  Frequency.BodyGyro.MeanFrequency...X
*  Frequency.BodyGyro.MeanFrequency...Y
*  Frequency.BodyGyro.MeanFrequency...Z
*  Frequency.BodyAccelerationMagnitude.Mean..
*  Frequency.BodyAccelerationMagnitude.StandardDeviation..
*  Frequency.BodyAccelerationMagnitude.MeanFrequency..
*  Frequency.BodyBodyAccelerationJerkMagnitude.Mean..
*  Frequency.BodyBodyAccelerationJerkMagnitude.StandardDeviation..
*  Frequency.BodyBodyAccelerationJerkMagnitude.MeanFrequency..
*  Frequency.BodyBodyGyroMagnitude.Mean..
*  Frequency.BodyBodyGyroMagnitude.StandardDeviation..
*  Frequency.BodyBodyGyroMagnitude.MeanFrequency..
*  Frequency.BodyBodyGyroJerkMagnitude.Mean..
*  Frequency.BodyBodyGyroJerkMagnitude.StandardDeviation..
*  Frequency.BodyBodyGyroJerkMagnitude.MeanFrequen


## `tidydata.txt`
The `tidydata.txt` includes three types of variables.

1. In the first column, "subject" identifies by ID number the 30 participants in the experiment.
2. The second and third column, "activity" and "activitylabel", describe the six different activities done in the experiment: by number and by description.
3. The following columns describe the mean value of each variable in accordance to the corresponding subject and activity. This variables are the ones described in the previous dataset.
