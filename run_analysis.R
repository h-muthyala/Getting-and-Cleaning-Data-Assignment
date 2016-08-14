## Prep the data
## Download file
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
download.file(fileURL, destfile = "AssignmentDataset.zip");

## Unzip file
unzip(zipfile="./AssignmentDataset.zip",exdir=".")

## Step 2 - Merging test and training data sets

## Read features vector
feature <- read.table("./UCI HAR Dataset/features.txt");

## Read test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt");
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt");
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt");

## Read training data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt");
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt");
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt");


## REad activity labels and provide descriptive column names
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt");
colnames(activityLabels) <- c("activityID", "activityType");

## Assigning column names to training dataset
colnames(x_train) <- features[,2];
colnames(y_train) <- "activityID";
colnames(subject_train) <- "subjectID";

## Assigning column names to test dataset
colnames(x_test) <- features[,2];
colnames(y_test) <- "activityID";
colnames(subject_test) <- "subjectID";

## Step 1 - Merges the training and the test sets to create one data set.

mergedData_train <- cbind(subject_train, x_train, y_train);
mergedData_test <- cbind(y_test, subject_test, x_test);
mergedData <- rbind(mergedData_train, mergedData_test);

## Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

## Get all column names in the merged data set into a variable;
## use this to identify the required column names in the next step
columnNames <- colnames(mergedData);

## Get only the required measurement names into a vector
mean_std <- (grepl("activityID" , columnNames) | grepl("subjectID" , columnNames) | 
                grepl(".*mean.*" , columnNames) | grepl(".*std..*", columnNames));

## Subset the combined dataset for the required measurements only
mergedData_ForMeanSTD <- mergedData[,mean_std == TRUE];

## Step 3 - Uses descriptive activity names to name the activities in the data set

## merge with the activity labels data frame to get the activity type in the tidy data set
mergedData_WithActivityTypes <- merge(mergedData_ForMeanSTD, activityLabels, 
                                      by = "activityID", all.x = TRUE);

## Step 4 - Appropriately labels the data set with descriptive variable names.
finalDataSetColumns <- colnames(mergedData_WithActivityTypes);
finalDataSetColumns <- gsub('-mean', 'Mean', finalDataSetColumns);
finalDataSetColumns <- gsub('-std', 'STD', finalDataSetColumns);
finalDataSetColumns;
colnames(mergedData_WithActivityTypes) <- finalDataSetColumns;

## Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## create second data set
secondTidyDataset <- aggregate(. ~subjectID + activityID, mergedData_WithActivityTypes, mean);
secondTidyDataset <- secondTidyDataset[order(secondTidyDataset$subjectID, 
                                                secondTidyDataset$activityID),];

## write to file
write.table(secondTidyDataset, "secondTidyDataset.txt", row.name=FALSE);

