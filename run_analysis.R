## PART 1 - Merges the training and the test sets to create one data set

X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
X_merged<-merge(train,test,all = TRUE)