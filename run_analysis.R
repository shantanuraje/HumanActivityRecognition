library(dplyr)
## PART 1 - Merges the training and the test sets to create one data set
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
#----------------------------------------------------------------------
# PART 2 - Extracts measurements on the mean and standard deviation for each measurement
features<-read.table("./UCI HAR Dataset/features.txt")
indices<-features[grepl("(mean|std)[^Freq]",features$V2),]
X<-X[indices$V1]
colnames(X)<-indices[,2]
allData <- cbind(Y,subject,X)
# ---------------------------------------------------------------------
# PART 3 - Uses descriptive activity names to name the activities in the data set
activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
allData[,1]<-activities[allData[,1],2]
# ---------------------------------------------------------------------
# PART 4 - Appropriately labels the data set with descriptive variable names
# already done
# ---------------------------------------------------------------------
# PART 5 - creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidyData <- data.frame()
# colnames(tidyData)<- colnames(allData)
for (subjectid in 1:30){
    subjectData <- filter(allData,subjectId == subjectid)    
    for(activityName in activities$V2){
        activityData <- filter(subjectData,Activity == activityName)
        activitymean <- colMeans(activityData[3:NCOL(allData)])

        
    }

}















