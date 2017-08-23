## Script Name: run_analysis.R
## Prequisites - Download Samsung zip file, unzip file, and move required source files (7), as well as, codebook.xlsx file 
## to working directory for R to ingest to local working directory
## Samsung zip file can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## codebook.xlsx file can be found in this respository

##Install/load needed packages
install.packages("plyr")
install.packages("dplyr")
install.packages("tidyr")
install.packages("data.table")
install.packages("xlsx")
library(plyr)
library(dplyr)
library(tidyr)
library(data.table)
library(xlsx)


## Step 1 -  Merge the training and the test sets to create one data set.
##           There are seven Samsung source input files involved:
##           File		        Desc/Purpose	
##           ------------------       ------------------------------------------------------ 
##           1. features.txt          a vector of all measurement columns names (561 rows) - aligned with actual measurement files: X_train.txt and X_test.txt 
##           2. activity_labels.txt   a matrix mapping activity id to activity label (6 rows)
##           3. subject_train.txt     a vector of every volunteer/subject id for each training observation (7352 rows) 
##           4. subject_test.txt      a vector of every volunteer/subject id for each test observation (2947 rows)  
##           5. y_train.txt           a vector of every activity id for each training observation (7352 rows)
##           6. y_test.txt	      a vector of every activity id for each test observation (2947 rows)
##           7. X_train.txt	      a matrix of 561 measurements/features for each training observation (7352 rows)
##           8. X_test.txt            a matrix of 561 measurements/features for each test observation (2947 rows)
##
##              SubStep 1 - Read in training files and Cbind activity ID (y_train.txt) and Subject/Volunteer ID (subject_train.txt) to training measurements (X_train.txt)
                		train_meas<- read.table("X_train.txt", sep="",stringsAsFactors=FALSE ,header = FALSE)
                		train_act <- read.csv("y_train.txt", header=FALSE)
                		train_sub <- read.csv("subject_train.txt", header=FALSE)
				train     <- cbind(train_sub, train_act, train_meas)

##              SubStep 2 - Read in test files and Cbind activity ID (y_test.txt)  and Subject/Volunteer ID (subject_test.txt)  to test measurements (X_test.txt)  
                		test_meas<- read.table("X_test.txt", sep="",stringsAsFactors=FALSE ,header = FALSE)
                		test_act <- read.csv("y_test.txt", header=FALSE)
                		test_sub <- read.csv("subject_test.txt", header=FALSE)
				test     <- cbind(test_sub, test_act, test_meas)

##              SubStep 3 - Rbind/Merge new data sets from Step 1 and 2 - this should produce new row count of 7352+2947=10,299 rows
				analysis1<- rbind(train,test)

##              SubStep 4 - Read in raw feature variable names as a vector and use as column headers with new combined data (analysis1 df), 
##                          also adding subject_id and activity_id headers
                		features1 <- read.table("features.txt", sep="",stringsAsFactors=TRUE ,header = FALSE)
				features2 <- as.vector(features1[[2]])
                		x <- c("subject_id", "activity_id")
                		features3 <- c(x,features2) 
                		colnames(analysis1) <- features3     

## Step 2 -  Extract only the measurements on the mean and standard deviation for each measurement.
##           Subset data set from Step 4 only keeping measurement columns related to mean and standard deviation: 
##           This subsets the data to 66 mean()/std(0) measurement columns.             
             analysis2 <-  subset(analysis1, select = c(subject_id,activity_id,grep("mean\\(\\)|std\\(\\)", names(analysis1))))
             setDT(analysis2)


## Step 3 -  Read in activity label data and use descriptive activity names to name the activities in the data set
##           Add new lookup column to derive Activity Type description (activity_labels.txt - 6 rows)
             activity <- read.table("activity_labels.txt", sep="",stringsAsFactors=FALSE ,header = FALSE)
             setDT(activity)
             colnames(activity) <- c("activity_id", "activity_desc")
	     analysis3 <- merge(analysis2,activity,by.x="activity_id",by.y="activity_id")	
##           Move 'activity_desc' column to 3rd column sequence/position (after activity_id)
             analysis4 <- select(analysis3,2, 1, 69,3:68)


## Step 4 -  Appropriately label the data set with descriptive variable names.
##           Source and Use codebook.xlsx variable names to rename source variable names according to tidy standards
             codebook <- read.xlsx("codebook.xlsx",sheetIndex=2,header=FALSE)
             codebook2 <- as.vector(codebook[[1]])
             colnames(analysis4) <- codebook2


## Step 5 -  From the data set in step 4, create a second, independent tidy data set 
##           with the average of each measurement variable by activity AND subject.
             analysis5 <- aggregate(. ~activity_id + activity_desc + subject_id, analysis4, mean) 
##	     Write aggregated,tidy data set to working directory
	     write.csv(analysis5, "analysis_final.csv",row.names = FALSE)
