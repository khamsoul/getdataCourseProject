#Read in the separate data
testX = read.table("UCI HAR Dataset//test//X_test.txt")
testY = read.table("UCI HAR Dataset//test/y_test.txt")
trainX = read.table("UCI HAR Dataset//train/X_train.txt")
trainY = read.table("UCI HAR Dataset//train/y_train.txt")

features = read.table("UCI HAR Dataset//features.txt")
testSubjects = read.table("UCI HAR Dataset//test/subject_test.txt")
trainSubjects = read.table("UCI HAR Dataset//train/subject_train.txt")
activityLabels = read.table("UCI HAR Dataset//activity_labels.txt")

#Q3: Add in descriptive activity labels and subject names
testX$Subject = testSubjects[,1]
testX$Activity = factor(testY[,1], labels=activityLabels[,2])
trainX$Subject = trainSubjects[,1]
trainX$Activity = factor(trainY[,1], labels=activityLabels[,2])

#Q 1: Create one data set
mergedData = merge(testX, trainX, all=TRUE)
colnames(mergedData)[1:561] = as.character(features[, 2])

#Q2: Extract only mean and standard deviation measurements
#Q4: Use the default data names as they are already descriptive
filteredData = mergedData[, grep('(mean)|(std)|(Subject)|(Activity)', colnames(mergedData))]

#Q5: Create a dataset showing the mean of each activity, by activity and subject
library(dplyr)
filteredTbl = tbl_dt(filteredData)
groupedTbl = group_by(filteredTbl, Activity, Subject)
summarizedTbl = summarise_each(groupedTbl, funs(mean))

write.table(summarizedTbl, file = "summarizedData.txt", row.name = FALSE)