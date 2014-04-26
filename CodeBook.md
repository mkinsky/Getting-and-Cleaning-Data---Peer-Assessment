#Getting-and-Cleaning-Data---Peer-Assessment
#====================================

##Code Book

This code book will accomplish the following goals:

1.  Describe the raw data, at a high-level
2.  Transformations used to take the raw data and produce the tidyData.txt
3.  Describe each variable in tidyData.txt file


###1.  Describe the raw data, at a high-level
As described in (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), the Human Activity Recognition Using Smartphones Data Set contains "...measurements from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

In total, 10,299 trial runs were carried out across the 30 test subjects performing the 6 activities.  In each trial run, 561 separate measurements were recorded.  The resulting data were stored as follows:

* 'features_info.txt': Describes the 561 measurement variables
* 'features.txt': List of all measurements taken
* 'activity_labels.txt': Lists each activity
* 'train/X_train.txt': This file contains the raw training set data and is comprised of 7,352 trials with each trial having 561 separate measurements
* 'train/y_train.txt': The activity performed by each subject in the X_train.txt data set
* 'test/X_test.txt': This file contains the raw test set data and is comprised of 2,947 trials with each trial having 561 separate measurements
* 'test/y_test.txt': The activity performed by each subject in the X_test.txt data set

###2.  Transformations used to take the raw data and produce the tidyData.txt

The goal of the assessment was to perform the following tasks:
*  Create one R script called run_analysis.R that does the following. 
*  Merges the training and the test sets to create one data set.
*  Extracts only the measurements on the mean and standard deviation for each measurement. 
*  Uses descriptive activity names to name the activities in the data set
*  Appropriately labels the data set with descriptive activity names. 
*  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

In order to accomplish these tasks, the "run_analysis.R" script was created.  Each transformation I performed has been commented in the script and can be traced back to one or more of the afor


###3.  Describe each variable in tidyData.txt file
The tidyData.txt file is comprised of the following columns:
* subject - This is an unique number associated with each test subject
* activity.id - This is an unique number associated with a given experimental activity
* activity - The textual description associated with the given activity.id
* variable - A particular measurement made on the subject when performing the given activity.  As illustrated in the dataset, there are numerous measurements made on each subject when performing each given activity.  
* average - The