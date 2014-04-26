##README
##-----------

###Mark Kinsky
###Getting and Cleaning Data - April 2014 - Signature Track

The goal of the repository is to be a central warehouse for all files related to the Coursera "Getting and Cleaning Data" class's peer assesment assignment due on 27 April 2014.  The assignment's goal is to take a wearable computing machine learning dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and perform the following actions on the dataset:

*  Create one R script called run_analysis.R that does the following. 
*  Merges the training and the test sets to create one data set.
*  Extracts only the measurements on the mean and standard deviation for each measurement. 
*  Uses descriptive activity names to name the activities in the data set
*  Appropriately labels the data set with descriptive activity names. 
*  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Additional details regarding the dataset and measurement techniques can be found at (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The testing and training datasets can be found within the "Raw Data" folder along with a "README.txt" explaining the machine learning data set.

The output for this assignment can be in the tidyData.txt file, which is located in the "Tidy Data" folder.

The main directory contains the "run_analysis.R" file which was used to transform the raw data into the tidyData.txt file.  The main directory also contains a README.md file, which discusses how all these folders and files interact, and a CodeBook.md file, which describes the variables, the data, and any transformations performed to clean up the data.