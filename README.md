#Project Getting and Cleaning Data - README
This project does cleaning and retreival of data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
This data is collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone. The analysis for cleaning, merging and preparing tidy data set is then performed.

There are 4 files in this repo:
## 1. README.md
		Which is this file which contains detail of the implementation.
## 2. CodeBook.md
		Which contains the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
## 3. run_analysis.R
		Which is the script used to do analysis on data.
## 4. tidyData.txt
		Which is the final result of the analysis.
		
#Background
The source data set that this project was based on was obtained from the Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
There are six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) involved with smartphone. Using its embedded accelerometer and gyroscope,
3-axial linear acceleration and 3-axial angular velocity is captured as data point. The obtained dataset has been randomly partitioned into two sets, test and training data.

#Process
The R script `run_analysis.R` is used to create the tidy data set. It retrieves the source data set zip file and analyse and process it to create the final tidy data set which is clean.
Steps involved are:
	## Load the 'dplyr' package/library.
	## Download and unzip source data if it doesn't exist.
	## Merge the training and the test data to create one data set.
	## Extract the measurements on the mean and standard deviation for each measurement.
	## Label the data set with appropriate names.
	## Create a data set summarizing all variables.
	## Write the data set to the `tidyData.txt` file.
	

