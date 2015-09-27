library(dplyr)

# PART 1 - Merges the training and the test sets to create one data set
# row bind  train and test sets
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
X<-rbind(X_train,X_test)

Y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
Y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
Y<-rbind(Y_train,Y_test)
colnames(Y)<-"Activity"

subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
subject<-rbind(subject_train,subject_test)
colnames(subject)<-"subjectId"
# -------------------------------------------------------------------------------------------------------------------------

# PART 2 - Extracts measurements on the mean and standard deviation for each measurement
# subset required variables from dataset, column bind prediction, subject IDs and X
features<-read.table("./UCI HAR Dataset/features.txt")
reqIndices<-features[grepl("(mean|std)[^Freq]",features$V2),]
X<-X[reqIndices$V1]
colnames(X)<-reqIndices[,2]
allData <- cbind(Y,subject,X)
# -------------------------------------------------------------------------------------------------------------------------

# PART 3 - Uses descriptive activity names to name the activities in the data set
# replace activity stated from numeric to verb strings to make it descriptive
activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
allData[,1]<-activities[allData[,1],2]
# -------------------------------------------------------------------------------------------------------------------------

# PART 4 - Appropriately labels the data set with descriptive variable names
# Cleaning up the variable names by replacing patterns with more descriptive words from reference code book
colNames  <- colnames(allData)
for (i in 1:length(colNames)) 
{
    colNames[i] = gsub("\\()","",colNames[i])
    colNames[i] = gsub("-std$","StdDev",colNames[i])
    colNames[i] = gsub("-mean","Mean",colNames[i])
    colNames[i] = gsub("^(t)","time",colNames[i])
    colNames[i] = gsub("^(f)","freq",colNames[i])
    colNames[i] = gsub("-","",colNames[i])
}
# Reassigning the new descriptive column names to the finalData set
colnames(allData) <-  colNames
# -------------------------------------------------------------------------------------------------------------------------

# PART 5 - creates a second, independent tidy data set with the average of each variable for each activity and each subject
# aggregate average of each variable for each activity and each subject
tidyData <- aggregate(.~Activity+subjectId,FUN = mean,allData)
write.table(tidyData,"tidyData.txt")
# -------------------------------------------------------------------------------------------------------------------------















