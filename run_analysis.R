setwd("~/Downloads/UCI HAR Dataset/")

a1<-read.table("test/X_test.txt")
b1<-read.table("test/y_test.txt")
c1<-read.table("./test/subject_test.txt")

a2<-read.table("train/X_train.txt")
b2<-read.table("train/y_train.txt")
c2<-read.table("./train/subject_train.txt")

# 1) Merges the training and the test sets to create one data set.
aa<-rbind(a1, a2)
bb<-rbind(b1, b2)
cc<-rbind(c1, c2)

# 2) Extracts only the measurements on the mean and standard deviation for each measurement.

features<-read.table("features.txt")
subset_features<-subset(features, grepl("mean()", V2, fixed = TRUE) | grepl("std()", V2, fixed = TRUE))$V1
extracted_data<-aa[subset_features]

# 3) Uses descriptive activity names to name the activities in the data set
activity_labels<-read.table("activity_labels.txt")
activity_list <- merge(bb, activity_labels, by = "V1", all = TRUE)$V2
extracted_data<-cbind(activity_list, extracted_data)

# 4) Appropriately labels the data set with descriptive activity names.
colnames(extracted_data) <- c("activity", as.vector(subset(features, grepl("mean()", V2, fixed = TRUE) | grepl("std()", V2, fixed = TRUE))$V2))

# 5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
extracted_data<-cbind(cc, extracted_data)
colnames(extracted_data)[1] <- "subject"
extracted_data<-aggregate(. ~ subject+activity,data = extracted_data,FUN=function(extracted_data) c(mn =mean(extracted_data), n=length(extracted_data) ) )
write.csv(file='TidyDataSet.txt', x=extracted_data)
