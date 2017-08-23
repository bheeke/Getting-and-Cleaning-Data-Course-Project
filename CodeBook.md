This is the codebook for the tidy data set created for the Samsung phone signal data.

SUMMARY
------------------------------------------------
------------------------------------------------
The purpose of this data collection is to provide a tidy data set from the experiments that were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, the experiments captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

EXTENT OF PROCESSING
------------------------------------------------
------------------------------------------------
See Transformation Section below
                               
DATA FORMAT
------------------------------------------------
------------------------------------------------  
- Three (3) space delimited .txt files: activity_labels.txt, X_train.txt,  X_test.txt 
- Five (5) single column, vertical/vector .txt files: features.txt, subject_train.txt, subject_test.txt, y_train.txt, y_test.txt


SOURCE DATA/EXTENT OF COLLECTION
------------------------------------------------
------------------------------------------------
There are eight source input files involved in producing the final, 
tidy data set for the Samsung phone signal measurements:

Source File		 Desc/Purpose	
------------------       ------------------------------------------------------ 
1. features.txt          a vector of all measurement columns names (561 rows) - aligned with actual measurement files: X_train.txt and X_test.txt 
2. activity_labels.txt   a matrix that maps activity id to activity label (6 rows)
3. subject_train.txt     a vector of every volunteer/subject id for each training observation (7352 rows) 
4. subject_test.txt      a vector of every volunteer/subject id for each test observation (2947 rows)  
5. y_train.txt           a vector of every activity id for each training observation (7352 rows)
6. y_test.txt	         a vector of every activity id for each test observation (2947 rows)
7. X_train.txt	         a matrix of 561 measurements/features for each training observation (7352 rows)
8. X_test.txt            a matrix of 561 measurements/features for each test observation (2947 rows)
9. codebook.xlsx         a vector of the 69 tidy variable names to be applied to tidy data set (69 rows)


TRANSFORMATIONS (APPLIED TO PRODUCE FINAL, TIDY DATA SET)
----------------------------------------------------------------------
----------------------------------------------------------------------
1. Merge Training data
2. Merge Test data
3. Merge resultant Training and Test data
4. Apply source feature labels to latest data set
5. Subset latest data set selecting only mean and standard deviation variables for each observation (in addition to Subject ID, Activity ID) 
6. Perform lookup on Activity ID to obtain Activity Description
7. Rename variable/column names according to tidy data standards
8. Average all mean and standard deviation variables by activity and subject


VARIABLES - these can also be referenced in codebook.xlsx file, also included in this repository
-----------------------
-----------------------
Variable Position		Source Column Name	Tidy Column Name	Definition
1	subject_id	subject_id	The volunteer id associated with the subject/person being measured
2	activity_id	activity_id	The id value associated to the activity being measured
3	activity_desc	activity_desc	"The description label for the related activity identifier on each observation record
Possible List of Values are:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING"
4	tBodyAcc-mean()-X	mean_xaxis_timebodyacceleration	The mean value for the X axis, time domain body acceleration signal captured for a given activity and subject/volunteer
5	tBodyAcc-mean()-Y	mean_yaxis_timebodyacceleration	The mean value for the Y axis, time domain body acceleration signal captured for a given activity and subject/volunteer
6	tBodyAcc-mean()-Z	mean_yaxis_timebodyacceleration	The mean value for the Z axis, time domain body acceleration signal captured for a given activity and subject/volunteer
7	tBodyAcc-std()-X	stddev_xaxis_timebodyacceleration	The standard deviation value for the X axis, time domain body acceleration signal captured for a given activity and subject/volunteer
8	tBodyAcc-std()-Y	stddev_yaxis_timebodyacceleration	The standard deviation value for the Y axis, time domain body acceleration signal captured for a given activity and subject/volunteer
9	tBodyAcc-std()-Z	stddev_zaxis_timebodyacceleration	The standard deviation value for the Z axis, time domain body acceleration signal captured for a given activity and subject/volunteer
10	tGravityAcc-mean()-X	mean_xaxis_timegravityacceleration	The mean value for the X axis, time domain gravity acceleration signal captured for a given activity and subject/volunteer
11	tGravityAcc-mean()-Y	mean_yaxis_timegravityacceleration	The mean value for the Y axis, time domain gravity acceleration signal captured for a given activity and subject/volunteer
12	tGravityAcc-mean()-Z	mean_zaxis_timegravityacceleration	The mean value for the Z axis, time domain gravity acceleration signal captured for a given activity and subject/volunteer
13	tGravityAcc-std()-X	stddev_xaxis_timegravityacceleration	The standard deviation value for the X axis, time domain gravity acceleration signal captured for a given activity and subject/volunteer
14	tGravityAcc-std()-Y	stddev_yaxis_timegravityacceleration	The standard deviation value for the Y axis, time domain gravity acceleration signal captured for a given activity and subject/volunteer
15	tGravityAcc-std()-Z	stddev_zaxis_timegravityacceleration	The standard deviation value for the Z axis, time domain gravity acceleration signal captured for a given activity and subject/volunteer
16	tBodyAccJerk-mean()-X	mean_xaxis_timebodyaccelerationjerk	The mean value for the X axis, time domain body acceleration jerk signal captured for a given activity and subject/volunteer
17	tBodyAccJerk-mean()-Y	mean_yaxis_timebodyaccelerationjerk	The mean value for the Y axis, time domain body acceleration jerk signal captured for a given activity and subject/volunteer
18	tBodyAccJerk-mean()-Z	mean_zaxis_timebodyaccelerationjerk	The mean value for the Z axis, time domain body acceleration jerk signal captured for a given activity and subject/volunteer
19	tBodyAccJerk-std()-X	stddev_xaxis_timebodyaccelerationjerk	The standard deviation value for the X axis, time domain body acceleration jerk signal captured for a given activity and subject/volunteer
20	tBodyAccJerk-std()-Y	stddev_yaxis_timebodyaccelerationjerk	The standard deviation value for the Y axis, time domain body acceleration jerk signal captured for a given activity and subject/volunteer
21	tBodyAccJerk-std()-Z	stddev_zaxis_timebodyaccelerationjerk	The standard deviation value for the Z axis, time domain body acceleration jerk signal captured for a given activity and subject/volunteer
22	tBodyGyro-mean()-X	mean_xaxis_timebodygyroscope	The mean value for the X axis, time domain body gyroscope signal captured for a given activity and subject/volunteer
23	tBodyGyro-mean()-Y	mean_yaxis_timebodygyroscope	The mean value for the Y axis, time domain body gyroscope signal captured for a given activity and subject/volunteer
24	tBodyGyro-mean()-Z	mean_zaxis_timebodygyroscope	The mean value for the Z axis, time domain body gyroscope signal captured for a given activity and subject/volunteer
25	tBodyGyro-std()-X	stddev_xaxis_timebodygyroscope	The standard deviation value for the X axis, time domain body gyroscope signal captured for a given activity and subject/volunteer
26	tBodyGyro-std()-Y	stddev_yaxis_timebodygyroscope	The standard deviation value for the Y axis, time domain body gyroscope signal captured for a given activity and subject/volunteer
27	tBodyGyro-std()-Z	stddev_zaxis_timebodygyroscope	The standard deviation value for the Z axis, time domain body gyroscope signal captured for a given activity and subject/volunteer
28	tBodyGyroJerk-mean()-X	mean_xaxis_timebodygyroscopejerk	The mean value for the X axis, time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
29	tBodyGyroJerk-mean()-Y	mean_yaxis_timebodygyroscopejerk	The mean value for the Y axis, time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
30	tBodyGyroJerk-mean()-Z	mean_zaxis_timebodygyroscopejerk	The mean value for the Z axis, time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
31	tBodyGyroJerk-std()-X	stddev_xaxis_timebodygyroscopejerk	The standard deviation value for the X axis, time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
32	tBodyGyroJerk-std()-Y	stddev_yaxis_timebodygyroscopejerk	The standard deviation value for the Y axis, time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
33	tBodyGyroJerk-std()-Z	stddev_zaxis_timebodygyroscopejerk	The standard deviation value for the Z axis, time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
34	tBodyAccMag-mean()	mean_timebodyaccelerationmagnitude	The mean value for the magnitude of the time domain body acceleration signal captured for a given activity and subject/volunteer
35	tBodyAccMag-std()	stddev_timebodyaccelerationmagnitude	The standard deviation value for the magnitude of the time domain body acceleration signal captured for a given activity and subject/volunteer
36	tGravityAccMag-mean()	mean_timegravityaccelerationmagnitude	The mean value for the magnitude of the time domain gravity acceleration signal captured for a given activity and subject/volunteer
37	tGravityAccMag-std()	stddev_timegravityaccelerationmagnitude	The standard deviation value for the magnitude of the time domain gravity acceleration signal captured for a given activity and subject/volunteer
38	tBodyAccJerkMag-mean()	mean_timebodyaccelerationjerkmagnitude	The mean value for the magnitude of the time domain body acceleration jerk signal captured for a given activity and subject/volunteer
39	tBodyAccJerkMag-std()	stddev_timebodyaccelerationjerkmagnitude	The standard deviation value for the magnitude of the time domain body acceleration jerk signal captured for a given activity and subject/volunteer
40	tBodyGyroMag-mean()	mean_timebodygyroscopemagnitude	The mean value for the magnitude of the time domain body gyroscope signal captured for a given activity and subject/volunteer
41	tBodyGyroMag-std()	stddev_timebodygyroscopemagnitude	The standard deviation value for the magnitude of the time domain body gyroscope signal captured for a given activity and subject/volunteer
42	tBodyGyroJerkMag-mean()	mean_timebodygyroscopejerkmagnitude	The mean value for the magnitude of the time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
43	tBodyGyroJerkMag-std()	stddev_timebodygyroscopejerkmagnitude	The standard deviation value for the magnitude of the time domain body gyroscope jerk signal captured for a given activity and subject/volunteer
44	fBodyAcc-mean()-X	mean_xaxis_frequencybodyacceleration	The mean value for the X axis, frequency domain body acceleration signal captured for a given activity and subject/volunteer
45	fBodyAcc-mean()-Y	mean_yaxis_frequencybodyacceleration	The mean value for the Y axis, frequency domain body acceleration signal captured for a given activity and subject/volunteer
46	fBodyAcc-mean()-Z	mean_zaxis_frequencybodyacceleration	The mean value for the Z axis, frequency domain body acceleration signal captured for a given activity and subject/volunteer
47	fBodyAcc-std()-X	stddev_xaxis_frequencybodyacceleration	The standard deviation value for the X axis, frequency domain body acceleration signal captured for a given activity and subject/volunteer
48	fBodyAcc-std()-Y	stddev_yaxis_frequencybodyacceleration	The standard deviation value for the Y axis, frequency domain body acceleration signal captured for a given activity and subject/volunteer
49	fBodyAcc-std()-Z	stddev_zaxis_frequencybodyacceleration	The standard deviation value for the Z axis, frequency domain body acceleration signal captured for a given activity and subject/volunteer
50	fBodyAccJerk-mean()-X	mean_xaxis_frequencybodyaccelerationjerk	The mean value for the X axis, frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
51	fBodyAccJerk-mean()-Y	mean_yaxis_frequencybodyaccelerationjerk	The mean value for the Y axis, frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
52	fBodyAccJerk-mean()-Z	mean_zaxis_frequencybodyaccelerationjerk	The mean value for the Z axis, frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
53	fBodyAccJerk-std()-X	stddev_xaxis_frequencybodyaccelerationjerk	The standard deviation value for the X axis, frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
54	fBodyAccJerk-std()-Y	stddev_yaxis_frequencybodyaccelerationjerk	The standard deviation value for the Y axis, frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
55	fBodyAccJerk-std()-Z	stddev_zaxis_frequencybodyaccelerationjerk	The standard deviation value for the Z axis, frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
56	fBodyGyro-mean()-X	mean_xaxis_frequencybodygyroscope	The mean value for the X axis, frequency domain body gyroscope signal captured for a given activity and subject/volunteer
57	fBodyGyro-mean()-Y	mean_yaxis_frequencybodygyroscope	The mean value for the Y axis, frequency domain body gyroscope signal captured for a given activity and subject/volunteer
58	fBodyGyro-mean()-Z	mean_zaxis_frequencybodygyroscope	The mean value for the Z axis, frequency domain body gyroscope signal captured for a given activity and subject/volunteer
59	fBodyGyro-std()-X	stddev_xaxis_frequencybodygyroscope	The standard deviation value for the X axis, frequency domain body gyroscope signal captured for a given activity and subject/volunteer
60	fBodyGyro-std()-Y	stddev_yaxis_frequencybodygyroscope	The standard deviation value for the Y axis, frequency domain body gyroscope signal captured for a given activity and subject/volunteer
61	fBodyGyro-std()-Z	stddev_zaxis_frequencybodygyroscope	The standard deviation value for the Z axis, frequency domain body gyroscope signal captured for a given activity and subject/volunteer
62	fBodyAccMag-mean()	mean_frequencybodyaccelerationmagnitude	The mean value for the magnitude of the frequency domain body acceleration signal captured for a given activity and subject/volunteer
63	fBodyAccMag-std()	stddev_frequencybodyaccelerationmagnitude	The standard deviation value for the magnitude of the frequency domain body acceleration signal captured for a given activity and subject/volunteer
64	fBodyBodyAccJerkMag-mean()	mean_frequencybodyaccelerationjerkmagnitude	The mean value for the magnitude of the frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
65	fBodyBodyAccJerkMag-std()	stddev_frequencybodyaccelerationjerkmagnitude	The standard deviation value for the magnitude of the frequency domain body acceleration jerk signal captured for a given activity and subject/volunteer
66	fBodyBodyGyroMag-mean()	mean_frequencybodygyroscopemagnitude	The mean value for the magnitude of the frequency domain body gyroscope signal captured for a given activity and subject/volunteer
67	fBodyBodyGyroMag-std()	stddev_frequencybodygyroscopemagnitude	The standard deviation value for the magnitude of the frequency domain body gyroscope signal captured for a given activity and subject/volunteer
68	fBodyBodyGyroJerkMag-mean()	mean_frequencybodygyroscopejerkmagnitude	The mean value for the magnitude of the frequency domain body gyroscope jerk signal captured for a given activity and subject/volunteer
69	fBodyBodyGyroJerkMag-std()	stddev_frequencybodygyroscopejerkmagnitude	The standard deviation value for the magnitude of the frequency domain body gyroscope jerk signal captured for a given activity and subject/volunteer


