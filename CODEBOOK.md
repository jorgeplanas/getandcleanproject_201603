#humanactaveraged.txt

##Description

This dataset is part of the Course Project of Getting and Cleaning Data Course and summarizes data collected from the study "Human Activity Recognition Using Smartphones", collected with the accelerometers of the Samsung Galaxy S smartphone

##Study Design

A full description of the original data is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The used data can be downloaded from here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Quoted from the README.txt file included with the original data:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details." 

Quoted from the features_info.txt file included with the original data:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."

##Transformations

The raw data has been merged, selected, reestructured and summarised with the R script that can be found in the repository. This dataset presents an aggregate mean of the mean and standard deviation measurements for each subject and specific activity.

##Code Book

68 variables, 180 observations (6 activities per 30 subjects)

**Subject:** ID of the subject who performed the activities. Integer (1:30)

**Activity:** Specific activity performed. Factor, 6 levels:

	1. WALKING
	2. WALKING_UPSTAIRS
	3. WALKING_DOWNSTAIRS
	4. SITTING
	5. STANDING
	6. LAYING
	
**timebodyacc.mean.x:**  Aggregate mean of the mean values of the time body acceleration signal in the x axis. Numeric, continuous.
**timebodyacc.mean.y:**  Aggregate mean of the mean values of the time body acceleration signal in the y axis. Numeric, continuous.
**timebodyacc.mean.z:**  Aggregate mean of the mean values of the time body acceleration signal in the z axis. Numeric, continuous.
**timebodyacc.stddev.x:**  Aggregate mean of the standard deviation values of the time body acceleration signal in the x axis. Numeric, continuous.
**timebodyacc.stddev.y:**  Aggregate mean of the standard deviation  values of the time body acceleration signal in the y axis. Numeric, continuous.
**timebodyacc.stddev.z:**  Aggregate mean of the standard deviation  values of the time body acceleration signal in the z axis. Numeric, continuous.
**timegravityacc.mean.x:**  Aggregate mean of the mean values of the time gravity acceleration signal in the x axis. Numeric, continuous.
**timegravityacc.mean.y:**  Aggregate mean of the mean values of the time gravity acceleration signal in the y axis. Numeric, continuous.
**timegravityacc.mean.z:**  Aggregate mean of the mean values of the time gravity acceleration signal in the z axis. Numeric, continuous.
**timegravityacc.stddev.x:**  Aggregate mean of the standard deviation values of the time gravity acceleration signal in the x axis. Numeric, continuous.
**timegravityacc.stddev.y:**  Aggregate mean of the standard deviation  values of the time gravity acceleration signal in the y axis. Numeric, continuous.
**timegravityacc.stddev.z:**  Aggregate mean of the standard deviation  values of the time gravity acceleration signal in the z axis. Numeric, continuous.
**timebodyaccjerk.mean.x:**  Aggregate mean of the mean values of the time body acceleration jerk in the x axis. Numeric, continuous.
**timebodyaccjerk.mean.y:**  Aggregate mean of the mean values of the time body acceleration jerk in the y axis. Numeric, continuous.
**timebodyaccjerk.mean.z:**  Aggregate mean of the mean values of the time body acceleration jerk in the z axis. Numeric, continuous.
**timebodyaccjerk.stddev.x:**  Aggregate mean of the standard deviation values of the time body acceleration jerk in the x axis. Numeric, continuous.
**timebodyaccjerk.stddev.y:**  Aggregate mean of the standard deviation values of the time body acceleration jerk in the y axis. Numeric, continuous.
**timebodyaccjerk.stddev.z:**  Aggregate mean of the standard deviation values of the time body acceleration jerk in the z axis. Numeric, continuous.
**timebodygyro.mean.x:**  Aggregate mean of the mean values of the time body angular velocity signal in the x axis. Numeric, continuous.
**timebodygyro.mean.y:**  Aggregate mean of the mean values of the time body angular velocity signal in the y axis. Numeric, continuous.
**timebodygyro.mean.z:**  Aggregate mean of the mean values of the time body angular velocity signal in the z axis. Numeric, continuous.
**timebodygyro.stddev.x:**  Aggregate mean of the standard deviation values of the time body angular velocity signal in the x axis. Numeric, continuous.
**timebodygyro.stddev.y:**  Aggregate mean of the standard deviation  values of the time body angular velocity signal in the y axis. Numeric, continuous.
**timebodygyro.stddev.z:**  Aggregate mean of the standard deviation  values of the time body angular velocity signal in the z axis. Numeric, continuous.
**timebodygyrojerk.mean.x:**  Aggregate mean of the mean values of the time body angular velocity jerk in the x axis. Numeric, continuous.
**timebodygyrojerk.mean.y:**  Aggregate mean of the mean values of the time body angular velocity jerk in the y axis. Numeric, continuous.
**timebodygyrojerk.mean.z:**  Aggregate mean of the mean values of the time body angular velocity jerk in the z axis. Numeric, continuous.
**timebodygyrojerk.stddev.x:**  Aggregate mean of the standard deviation values of the time body angular velocity jerk in the x axis. Numeric, continuous.
**timebodygyrojerk.stddev.y:**  Aggregate mean of the standard deviation values of the time body angular velocity jerk in the y axis. Numeric, continuous.
**timebodygyrojerk.stddev.z:**  Aggregate mean of the standard deviation values of the time body angular velocity jerk in the z axis. Numeric, continuous.
**timebodyaccmag.mean:**  Aggregate mean of the mean values of the time magnitude of the body acceleration signal. Numeric, continuous.
**timebodyaccmag.stddev:**  Aggregate mean of the standard deviation values of the time magnitude of the body acceleration signal. Numeric, continuous.
**timegravityaccmag.mean:**  Aggregate mean of the mean values of the time magnitude of the gravity acceleration signal. Numeric, continuous.
**timegravityaccmag.stddev:**  Aggregate mean of the standard deviation values of the time magnitude of the gravity acceleration signal. Numeric, continuous.
**timebodyaccjerkmag.mean:**  Aggregate mean of the mean values of the time magnitude of the body acceleration jerk. Numeric, continuous.
**timebodyaccjerkmag.stddev:**  Aggregate mean of the standard deviation values of the time magnitude of the  body acceleration jerk. Numeric, continuous.
**timebodygyromag.mean:**  Aggregate mean of the mean values of the time magnitude of the body angular velocity signal. Numeric, continuous.
**timebodygyromag.stddev:**  Aggregate mean of the standard deviation values of the time magnitude of the body angular velocity signal. Numeric, continuous.
**timebodygyrojerkmag.mean:**  Aggregate mean of the mean values of the time magnitude of the body angular velocity jerk. Numeric, continuous.
**timebodygyrojerkmag.stddev:**  Aggregate mean of the standard deviation values of the time magnitude of the  body angular velocity jerk. Numeric, continuous.
**freqbodyacc.mean.x:**  Aggregate mean of the mean values of the frequency body acceleration signal in the x axis. Numeric, continuous.
**freqbodyacc.mean.y:**  Aggregate mean of the mean values of the frequency body acceleration signal in the y axis. Numeric, continuous.
**freqbodyacc.mean.z:**  Aggregate mean of the mean values of the frequency body acceleration signal in the z axis. Numeric, continuous.
**freqbodyacc.stddev.x:**  Aggregate mean of the standard deviation values of the frequency body acceleration signal in the x axis. Numeric, continuous.
**freqbodyacc.stddev.y:**  Aggregate mean of the standard deviation  values of the frequency body acceleration signal in the y axis. Numeric, continuous.
**freqbodyacc.stddev.z:**  Aggregate mean of the standard deviation  values of the frequency body acceleration signal in the z axis. Numeric, continuous.
**freqbodyaccjerk.mean.x:**  Aggregate mean of the mean values of the frequency body acceleration jerk in the x axis. Numeric, continuous.
**freqbodyaccjerk.mean.y:**  Aggregate mean of the mean values of the frequency body acceleration jerk in the y axis. Numeric, continuous.
**freqbodyaccjerk.mean.z:**  Aggregate mean of the mean values of the frequency body acceleration jerk in the z axis. Numeric, continuous.
**freqbodyaccjerk.stddev.x:**  Aggregate mean of the standard deviation values of the frequency body acceleration jerk in the x axis. Numeric, continuous.
**freqbodyaccjerk.stddev.y:**  Aggregate mean of the standard deviation values of the frequency body acceleration jerk in the y axis. Numeric, continuous.
**freqbodyaccjerk.stddev.z:**  Aggregate mean of the standard deviation values of the frequency body acceleration jerk in the z axis. Numeric, continuous.
**freqbodygyro.mean.x:**  Aggregate mean of the mean values of the frequency body angular velocity signal in the x axis. Numeric, continuous.
**freqbodygyro.mean.y:**  Aggregate mean of the mean values of the frequency body angular velocity signal in the y axis. Numeric, continuous.
**freqbodygyro.mean.z:**  Aggregate mean of the mean values of the frequency body angular velocity signal in the z axis. Numeric, continuous.
**freqbodygyro.stddev.x:**  Aggregate mean of the standard deviation values of the frequency body angular velocity signal in the x axis. Numeric, continuous.
**freqbodygyro.stddev.y:**  Aggregate mean of the standard deviation  values of the frequency body angular velocity signal in the y axis. Numeric, continuous.
**freqbodygyro.stddev.z:**  Aggregate mean of the standard deviation  values of the frequency body angular velocity signal in the z axis. Numeric, continuous.
**freqbodyaccmag.mean:**  Aggregate mean of the mean values of the frequency magnitude of the body acceleration signal. Numeric, continuous.
**freqbodyaccmag.stddev          :**  Aggregate mean of the standard deviation values of the frequency magnitude of the body acceleration signal. Numeric, continuous.
**freqbodybodyaccjerkmag.mean:**  Aggregate mean of the mean values of the frequency magnitude of the body acceleration jerk. Numeric, continuous.
**freqbodybodyaccjerkmag.stddev:**  Aggregate mean of the standard deviation values of the frequency magnitude of the  body acceleration jerk. Numeric, continuous.
**freqbodybodygyromag.mean:**  Aggregate mean of the mean values of the frequency magnitude of the body angular velocity signal. Numeric, continuous.
**freqbodybodygyromag.stddev:**  Aggregate mean of the standard deviation values of the frequency magnitude of the body angular velocity signal. Numeric, continuous.
**freqbodybodygyrojerkmag.mean:**  Aggregate mean of the mean values of the frequency magnitude of the body angular velocity jerk. Numeric, continuous.
**freqbodybodygyrojerkmag.stddev:**  Aggregate mean of the standard deviation values of the frequency magnitude of the  body angular velocity jerk. Numeric, continuous.

