#Getting and cleaning data project
library(dplyr)

# download zip file containing data
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) 
{
    download.file(zipUrl, zipFile, mode = "wb")
}

# unzip zip file containing data if data directory doesn't already exist
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) 
{
    unzip(zipFile)
}

#Read training and test data and create tidy data set by combining them
# read training data
trainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
trainingXValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainingYValues <- read.table(file.path(dataPath, "train", "y_train.txt"))

# read test data
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testXValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testYValues <- read.table(file.path(dataPath, "test", "y_test.txt"))

# read features
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)

# read activity labels
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

humanActivity <- rbind(
    cbind(trainingSubjects, trainingXValues, trainingYValues),
    cbind(testSubjects, testXValues, testYValues)
)

# remove individual data tables
rm(trainingSubjects, trainingXValues, trainingYValues, 
   testSubjects, testXValues, testYValues)

# assign column names
colnames(humanActivity) <- c("subject", features[, 2], "activity")

#Subset Mean and Std Deviation measurements
columnsNedded <- grepl("subject|activity|mean|std", colnames(humanActivity))
humanActivity <- humanActivity[, columnsNedded]

#Use named factor levels
humanActivity$activity <- factor(humanActivity$activity, 
                                 levels = activities[, 1], labels = activities[, 2])

#Label Data
# get column names
humanActivityColumns <- colnames(humanActivity)

# remove special characters
humanActivityColumns <- gsub("[\\(\\)-]", "", humanActivityColumns)

# expand abbreviations
humanActivityColumns <- gsub("^f", "frequencyDomain", humanActivityColumns)
humanActivityColumns <- gsub("^t", "timeDomain", humanActivityColumns)
humanActivityColumns <- gsub("Acc", "Accelerometer", humanActivityColumns)
humanActivityColumns <- gsub("Gyro", "Gyroscope", humanActivityColumns)
humanActivityColumns <- gsub("Mag", "Magnitude", humanActivityColumns)
humanActivityColumns <- gsub("Freq", "Frequency", humanActivityColumns)
humanActivityColumns <- gsub("mean", "Mean", humanActivityColumns)
humanActivityColumns <- gsub("std", "StandardDeviation", humanActivityColumns)

# correct typo
humanActivityColumns <- gsub("BodyBody", "Body", humanActivityColumns)

# use new labels as column names
colnames(humanActivity) <- humanActivityColumns

# group by subject and activity and summarize using mean
humanActivityMeans <- humanActivity %>% 
    group_by(subject, activity) %>%
    summarize_all(funs(mean))

# output to file "tidyData.txt"
write.table(humanActivityMeans, "tidyData.txt", row.names = FALSE, 
            quote = FALSE)

