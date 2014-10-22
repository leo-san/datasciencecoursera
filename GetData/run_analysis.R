##Run_analysis.R
#The script requires the dplyr package.
library(dplyr) 


## Step 1. Merge the training and the test sets to create one data set.

#X_test.txt contains the features for the test set 
testdata1 <- read.table("./UCI HAR Dataset/test/X_test.txt")
#subject_test.txt contains the subject labels (1-30) for the test set
testdata2 <- read.table("./UCI HAR Dataset/test/subject_test.txt")
#y_test contains activity labels (1-6) for the test set
testdata3 <- read.table("./UCI HAR Dataset/test/y_test.txt")
#Merging the test data into one data set by adding the subject labels and activities 
#as variables in the data set
mergetest <- cbind(testdata1, testdata2, testdata3)

#X_train.txt contains the features for the training set 
traindata1 <- read.table("./UCI HAR Dataset/train/X_train.txt")
#subject_train.txt contains the subject labels (1-30) for the training set
traindata2 <- read.table("./UCI HAR Dataset/train/subject_train.txt")
#y_train contains activity labels (1-6) for the training set
traindata3 <- read.table("./UCI HAR Dataset/train/y_train.txt")
#Merging the training data into one data set by adding the subject labels and activities 
#as variables in the data set
mergetrain <- cbind(traindata1, traindata2, traindata3)
#Finishing step one by merging the observations in the training and test sets 
#into one data set
mergetesttrain <- rbind(mergetest, mergetrain)
rm(list = c("traindata1", "traindata2", "traindata3", "testdata1", "testdata2", "testdata3"))

#Reads feature names which will be used, together with subject and activity, 
#as column names in the data set.
features <- read.table("./UCI HAR Dataset/features.txt")
newfeat <- c(as.character(features[,2]), "subject", "activity")
##Adds column names to the data set. 
colnames(mergetesttrain) <- newfeat

## Step 2. Extract the features that contain mean and standard deviation for each measurement.
## The features containing mean and standard deviation are interpreted as features whose labels
## containing -mean() or -std(). The weighted average of the frequency components in a sample
## are not included, nor are the features obtained by averaging the signals in a signal window sample.
## This excludes the features measuring meanFreq or Gravity mean. 
##Only features ending with -mean() or -std() are included. 

##Extracts the desired variables using the select method. 
testtrainmeanstd <- select(mergetesttrain, contains("mean()"), contains("std()"), contains("subject"), contains("activity"), -contains("meanFreq"), -contains("angle"))
rm(list = c("mergetest", "mergetesttrain", "mergetrain"))
## Step 3. Use descriptive activity names to name the activities in the data set

## Reading the activity names provided in activity_labels.txt
activity_label <- read.table("./UCI HAR Dataset/activity_labels.txt")
## Replacing activity numbers with activity names using gsub. 
for (i in 1:6){
    testtrainmeanstd$activity <- gsub(i,activity_label[i,2], testtrainmeanstd$activity)
}

## Step 4. Appropriately label the data set with descriptive variable names. 
##This process is done through cleaning
## of the feature labels obtained from features.txt using gsub. 
##Variable names changed to lower case
NameVec <- tolower(names(testtrainmeanstd))
##Abbreviations are expanded
NameVec <- gsub("fbody", "frequencybody", NameVec)
NameVec <- gsub("bodybody", "body", NameVec)
NameVec <- gsub("tbody", "timebody", NameVec)
NameVec <- gsub("tgravity", "timegravity", NameVec)
NameVec <- gsub("\\()", "", NameVec)
NameVec <- gsub("-std", "stddeviation", NameVec)
NameVec <- gsub("-mean", "mean", NameVec)
NameVec <- gsub("-x", "xdirection", NameVec)
NameVec <- gsub("-y", "ydirection", NameVec)
NameVec <- gsub("-z", "zdirection", NameVec)
NameVec <- gsub("mag", "magnitude", NameVec)
NameVec <- gsub("acc", "acceleration", NameVec)
#Setting the variable names using namevec
colnames(testtrainmeanstd) <- NameVec

## Step 5. 
#Output: a second, independent tidy data set with the average of 
#each variable for each activity and each subject.

#Grouping the data set by activity and subject using the dplyr function group_by
grouptesttrain <- group_by(testtrainmeanstd, subject, activity)

#Using the dplyr method summarise_each to take the average of each variable 
#grouped by subject and activity.
tidydata <- grouptesttrain %>% summarise_each(funs(mean))    
#Writing the tidydata into a textfile "tidy.txt"
write.table(tidydata, file = "tidy.txt", row.names = FALSE)