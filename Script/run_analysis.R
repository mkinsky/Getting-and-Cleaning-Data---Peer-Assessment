#Remove all objects
rm(list=ls())

#Set the working directory
wd = "C:\\Education\\Getting and Cleaning Data\\Homework\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset"
setwd(wd)

#Set Libaries
library(reshape2)
library(plyr)
library(data.table)

#Load Train Data
subject_train <- read.table(".\\train\\subject_train.txt")
X_train <- read.table(".\\train\\X_train.txt")
Y_train <- read.table(".\\train\\Y_train.txt")
train <- data.frame(c(subject_train), c(Y_train), c(X_train))

#Load Test Data
subject_test <- read.table(".\\test\\subject_test.txt")
X_test <- read.table(".\\test\\X_test.txt")
Y_test <- read.table(".\\test\\Y_test.txt")
test <- data.frame(c(subject_test), c(Y_test), c(X_test))

#Load features
features <- read.table("features.txt")

#Load activity names
activity <- read.table("activity_labels.txt")
colnames(activity) <- c("activity.id", "activity")

#Part 1 - Merges the training and the test sets to create one data set
combined.data.frame <- rbind(train, test)
combined.data.frame.col.names <- c("subject", "activity.id", as.character((features[,2])))
colnames(combined.data.frame) <- combined.data.frame.col.names

#Part 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
column.matches.mean <- as.data.frame(grep(pattern = "mean()", x = combined.data.frame.col.names, fixed=TRUE))
colnames(column.matches.mean) <- "GrepRowIndexes"
column.matches.std <- as.data.frame(grep(pattern = "std()", x = combined.data.frame.col.names, fixed=TRUE))
colnames(column.matches.std) <- "GrepRowIndexes"
column.matches <- rbind(1, 2, column.matches.mean, column.matches.std)
measurement.data.frame <- as.data.frame(combined.data.frame[, column.matches[,1]])

#Part 3 - Uses descriptive activity names to name the activities in the data set
#Part 4 - Appropriately labels the data set with descriptive activity names. 
measurement.data.frame <- merge(x = activity, y = measurement.data.frame, by = "activity.id")
measurement.data.frame <- measurement.data.frame[, c(3, 1:2, 4:69)] #reorder columns

#Part 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
melted.data.frame <- melt(measurement.data.frame, id=c("subject", "activity.id", "activity"))
id.variables <- c("subject", "activity.id", "activity", "variable")
measurement.data.table <- data.table(melted.data.frame)
tidy.data <- data.frame(measurement.data.table[, mean(value), by=id.variables])
colnames(tidy.data) <- c(id.variables, "average")
tidy.data.ordered <- tidy.data[order(tidy.data$subject, tidy.data$activity.id, tidy.data$activity, tidy.data$variable),] 
write.csv(tidy.data.ordered, file = "tidyData.txt", row.names=FALSE)

#Remove all objects
rm(list=ls())