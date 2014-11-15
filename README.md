## Getting and Cleaning Data Project

Korotkov Alexander

Repository for the course project for the Johns Hopkins Getting and Cleaning Data course on Coursera.

### Overview
The purpose of this project is to demonstrate the collection and cleaning of a tidy data set. The data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The source data can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Making Modifications to This Script
Once you have obtained and unzipped the source files, you will need to make  modification to the run_analysis.R file before you can process the data. You will set the path of the working directory to relect the location of the source files
in your own directory on the first line.

### Project Summary
You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Additional Information
You can find additional information about the variables, data and transformations in the CodeBook.MD file.
