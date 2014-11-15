setwd("/Users/krotix/dev/home/R/Getting and Cleaning Data/project")

activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
features <- read.csv("./UCI HAR Dataset/features.txt", sep="", header=FALSE)

#train data processing
x_train = read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
subject_train = read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

#load and add activity labels
y_train = read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
y_train <- cbind(y_train, activity_labels[y_train[,1], 2])

#add names
names(x_train) <- features[, 2]
names(subject_train) <- "subject"
names(y_train) <- c("activityId", "activityLabel")

train_data <- cbind(x_train, y_train, subject_train)

#test data processing
x_test = read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
subject_test = read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

#load and add activity labels
y_test = read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
y_test <- cbind(y_test, activity_labels[y_test[,1], 2])

#add names
names(x_test) <- features[, 2]
names(subject_test) <- "subject"
names(y_test) <- c("activityId", "activityLabel")

test_data <- cbind(x_test, y_test, subject_test)

#merge test and train data
data <- rbind(train_data, test_data)

#extracts only the measurements on the mean and standard deviation for each measurement
extracted <- data[,grepl("mean|std", features[, 2])]

head_labels <- c("subject", "activityId", "activityLabel")
data_labels <- setdiff(colnames(extracted), head_labels)
melt_data <- melt(extracted, id = head_labels, measure.vars = data_labels)

tidy <- dcast(melt_data, subject + activityLabel ~ variable, mean)
write.table(tidy, file = "./tidy_data.txt")
