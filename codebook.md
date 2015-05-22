---
title: "CodeBook"
output: html_document
---

### Introduction
This is the codebook for the summary of the data of the Human Activity Recognition dataset. It contains the means of each of the mean and standard deviation values for accelerometer and gyroscope values taken by a Smartphone for 30 volunteers using both training and test datasets.

## Data Dictionary

Col | Variable  | Description | Type  | Range
--- | --------- | ------------| ----- | -----
 1 | Activity | The type of activity that was performed;<br> there were six types of activities | Categorical | STANDING<br>WALKING<br>WALKING_DOWNSTAIRS<br>WALKING_UPSTAIRS<br>LAYING<br>SITTING
 2 | Subject  | Used to identify the volunteer whose measurement was taken | Categorical | 1 to 30
 3<br> 4<br> 5 | tBodyAcc-mean()-X<br>tBodyAcc-mean()-Y<br>tBodyAcc-mean()-Z | These three columns represent the average of mean time taken<br>for body acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
6<br> 7<br> 8 |tGravityAcc-mean()-X<br>tGravityAcc-mean()-Y<br>tGravityAcc-mean()-Z | These three columns represent the average of mean time taken<br>for gravity acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
9<br> 10<br> 11 |tBodyAccJerk-mean()-X<br>tBodyAccJerk-mean()-Y<br>tBodyAccJerk-mean()-Z | These three columns represent the average of mean time taken<br>for body jerk acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
12<br> 13<br> 14 |tBodyGyro-mean()-X<br>tBodyGyro-mean()-Y<br>tBodyGyro-mean()-Z | These three columns represent the average of mean time taken<br>for body Gyroscope signals in X, Y or Z directions respectively | Continuous | -1 to 1
15<br> 16<br> 17 |tBodyGyroJerk-mean()-X<br>tBodyGyroJerk-mean()-Y<br>tBodyGyroJerk-mean()-Z | These three columns represent the average of mean time taken<br>for body Gyroscope Jerk in X, Y or Z directions respectively | Continuous | -1 to 1
18 | tBodyAccMag-mean() | This represents the average of <br>mean time taken for body Acceleration Magnitude<br> which is the norm of the XYZ body acceleration times | Continuous | -1 to 1
19 | tGravityAccMag-mean() | This represents the average of<br> mean time taken for Gravity Acceleration Magnitude<br> which is the norm of the XYZ Gravity acceleration times | Continuous | -1 to 1
20 | tBodyAccJerkMag-mean() | This represents the average of<br> mean time takenfor body Acceleration Jerk Magnitude<br> which is the norm of the XYZ body Jerk acceleration times | Continuous | -1 to 1
21 | tBodyGyroMag-mean() | This represents the average of<br> mean time taken for body Gyroscope Magnitude<br> which is the norm of the XYZ body gyroscope times| Continuous | -1 to 1
22 | tBodyGyrJerkMag-mean() | This represents the average of mean time taken<br>for body Gyroscope Jerk Magnitude<br> which is the norm of the XYZ body gyroscope | Continuous | -1 to 1
23<br> 24<br> 25 | fBodyAcc-mean()-X<br>fBodyAcc-mean()-Y<br>fBodyAcc-mean()-Z | These three columns represent the average of<br> mean frequency domain signals taken for<br> body acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
26<br> 27<br> 28 |fBodyAccJerk-mean()-X<br>fBodyAccJerk-mean()-Y<br>fBodyAccJerk-mean()-Z | These three columns represent the average of<br> frequency domain signals for body jerk acceleration<br> in X, Y or Z directions respectively | Continuous | -1 to 1
29<br> 30<br> 31 |fBodyGyro-mean()-X<br>fBodyGyro-mean()-Y<br>fBodyGyro-mean()-Z | These three columns represent the average<br> of mean frequency domain signals for<br> body Gyroscope signals in X, Y or Z directions respectively | Continuous | -1 to 1
32 | fBodyAccMag-mean() | This represents the average of<br> mean frequency domain signals for<br> body Acceleration Magnitude which is<br> the norm of the XYZ body acceleration values | Continuous | -1 to 1
33 | fBodyAccJerkMag-mean() | This represents the average of mean frequency domain signals<br>for body Acceleration Jerk Magnitude which is<br> the norm of the XYZ body acceleration jerk values| Continuous | -1 to 1
34 | fBodyGyroMag-mean() | This represents the average of mean frequency domain signals<br>for body Gyroscope Magnitude which is<br> the norm of the XYZ body gyroscope values  | Continuous | -1 to 1
35 | fBodyGyroJerkMag-mean() | This represents the average of mean frequency domain signals<br>for body Gyroscope Jerk Magnitude which is<br> the norm of the XYZ body gyroscope jerk values  | Continuous | -1 to 1 
 36<br> 37<br> 38 | tBodyAcc-std()-X<br>tBodyAcc-std()-Y<br>tBodyAcc-std()-Z | These three columns represent the average of the<br> standard deviation of time taken<br>for body acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
 39<br> 40<br> 41 |tGravityAcc-std()-X<br>tGravityAcc-std()-Y<br>tGravityAcc-std()-Z | These three columns represent the average of <br>standard deviation  time taken<br>for gravity acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
 42<br> 43<br> 44 |tBodyAccJerk-std()-X<br>tBodyAccJerk-std()-Y<br>tBodyAccJerk-std()-Z | These three columns represent the average of<br>standard deviation of time taken<br>for body jerk acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
 45<br> 46<br> 47 |tBodyGyro-std()-X<br>tBodyGyro-std()-Y<br>tBodyGyro-std()-Z | These three columns represent the average of<br> the standard deviation of time taken<br>for body Gyroscope signals in X, Y or Z directions respectively | Continuous | -1 to 1
 48<br> 49<br> 50 |tBodyGyroJerk-std()-X<br>tBodyGyroJerk-std()-Y<br>tBodyGyroJerk-std()-Z | These three columns represent the average of<br>standard deviation of time taken<br>for body Gyroscope Jerk in X, Y or Z directions respectively | Continuous | -1 to 1
 51 | tBodyAccMag-std() | This represents the average of <br>standard deviation of time taken for body Acceleration Magnitude<br> which is the norm of the XYZ body acceleration times | Continuous | -1 to 1
 52 | tGravityAccMag-std() | This represents the average of<br>standard deviation of time taken for Gravity Acceleration Magnitude<br> which is the norm of the XYZ Gravity acceleration times | Continuous | -1 to 1
 53 | tBodyAccJerkMag-std() | This represents the average of<br>standard deviation of time takenfor body Acceleration Jerk Magnitude<br> which is the norm of the XYZ body Jerk acceleration times | Continuous | -1 to 1
 54 | tBodyGyroMag-std() | This represents the average of<br>standard deviation of time taken for body Gyroscope Magnitude<br> which is the norm of the XYZ body gyroscope times| Continuous | -1 to 1
 55 | tBodyGyrJerkMag-std() | This represents the average of<br>standard deviation of time taken<br>for body Gyroscope Jerk Magnitude<br> which is the norm of the XYZ body gyroscope | Continuous | -1 to 1
 56<br> 57<br> 58 | fBodyAcc-std()-X<br>fBodyAcc-std()-Y<br>fBodyAcc-std()-Z | These three columns represent the average of<br>standard deviation of frequency domain signals taken for<br> body acceleration in X, Y or Z directions respectively | Continuous | -1 to 1
 59<br> 60<br> 61 |fBodyAccJerk-std()-X<br>fBodyAccJerk-std()-Y<br>fBodyAccJerk-std()-Z | These three columns represent the average of<br>standard deviation of frequency domain signals for body jerk acceleration<br> in X, Y or Z directions respectively | Continuous | -1 to 1
 62<br> 63<br> 64 |fBodyGyro-std()-X<br>fBodyGyro-std()-Y<br>fBodyGyro-std()-Z | These three columns represent the average<br> of standard deviation of frequency domain signals for<br> body Gyroscope signals in X, Y or Z directions respectively | Continuous | -1 to 1
 65 | fBodyAccMag-std() | This represents the average of<br>standard deviation of frequency domain signals for<br> body Acceleration Magnitude which is<br> the norm of the XYZ body acceleration values | Continuous | -1 to 1
 66 | fBodyAccJerkMag-std() | This represents the average of<br>standard deviation of frequency domain signals<br>for body Acceleration Jerk Magnitude which is<br> the norm of the XYZ body acceleration jerk values| Continuous | -1 to 1
 67 | fBodyGyroMag-std() | This represents the average of<br>the standard deviation of frequency domain signals<br>for body Gyroscope Magnitude which is<br> the norm of the XYZ body gyroscope values  | Continuous | -1 to 1
 68 | fBodyGyroJerkMag-std() | This represents the average of<br>the standard deviation of frequency domain signals<br>for body Gyroscope Jerk Magnitude which is<br> the norm of the XYZ body gyroscope jerk values  | Continuous | -1 to 1 

 