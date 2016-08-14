---
output: pdf_document
---

<font size=16><b>Code Book</b></font><br/><br/>
This document provides details about the source data, transformation steps carried out as part of the assigment, and the variables included in the final data set. 

<font size=12><b>Data source and transformations</b></font>

The source data for this assignment is <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">here</a>. The original source of the data was the <a href="http://cml.ics.uci.edu/">Center for Machine Learning and Intelligent Systems</a> at <a href="http://uci.edu/">UCI</a>.

The primary objective of the assignment was to download and process data from the source and generate a tidy data set. The steps to produce the tidy data set are delivered as an R script. I carried out the following steps to complete this assignment and generate a tidy data set:

<ol>
<li>Downloaded the zip file to my working folder.</li>
<li>Unzipped the contents of the zip file.</li>
<li>Loaded all data sets into R</li>
<ul>
<li>Test data - subjects, measurements, and activities</li>
<li>Training data - subjects, measurements, and activities</li>
<li>Features data</li>
<li>Activity labels</li>
</ul>
<li>Merged the test and training data sets into one</li>
<li>Extracted only the required columns into another data frame to calculated required measurements only, as specified in the assignment (mean and STD)</li>
<li>Renamed columns in all data sets to be more descriptive and readbale</li>
<li>Created a second, independent tidy data set to group the data by subject and activity</li>
<li>Wrote the second, independent tidy data set to disk in a file called "secondTidyDataset.txt", which is included as a part of this submission</li>
</ol>


<b>Variables</b></font>
========================================================================================================

   activityID<br/>
   Storage mode: integer

========================================================================================================

   subjectID<br/>
   Storage mode: integer

========================================================================================================

   tBodyAccMean()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyAccMean()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyAccMean()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyAccSTD()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyAccSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyAccSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   tGravityAccMean()-X<br/>
   Storage mode: double

========================================================================================================

   tGravityAccMean()-Y<br/>
   Storage mode: double

========================================================================================================

   tGravityAccMean()-Z<br/>
   Storage mode: double

========================================================================================================

   tGravityAccSTD()-X<br/>
   Storage mode: double

========================================================================================================

   tGravityAccSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   tGravityAccSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkMean()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkMean()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkMean()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkSTD()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroMean()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroMean()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroMean()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroSTD()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkMean()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkMean()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkMean()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkSTD()-X<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   tBodyAccMagMean()<br/>
   Storage mode: double

========================================================================================================

   tBodyAccMagSTD()<br/>
   Storage mode: double

========================================================================================================

   tGravityAccMagMean()<br/>
   Storage mode: double

========================================================================================================

   tGravityAccMagSTD()<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkMagMean()<br/>
   Storage mode: double

========================================================================================================

   tBodyAccJerkMagSTD()<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroMagMean()<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroMagSTD()<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkMagMean()<br/>
   Storage mode: double

========================================================================================================

   tBodyGyroJerkMagSTD()<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMean()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMean()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMean()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyAccSTD()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyAccSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyAccSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMeanFreq()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMeanFreq()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMeanFreq()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkMean()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkMean()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkMean()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkSTD()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkMeanFreq()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkMeanFreq()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyAccJerkMeanFreq()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroMean()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroMean()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroMean()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroSTD()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroSTD()-Y<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroSTD()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroMeanFreq()-X<br/>
   Storage mode: double

========================================================================================================

   fBodyGyroMeanFreq()-Yv
   Storage mode: double

========================================================================================================

   fBodyGyroMeanFreq()-Z<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMagMean()<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMagSTD()<br/>
   Storage mode: double

========================================================================================================

   fBodyAccMagMeanFreq()<br/>
   Storage mode: double

========================================================================================================

   fBodyBodyAccJerkMagMean()<br/>
   Storage mode: double
   
========================================================================================================

   fBodyBodyAccJerkMagSTD()<br/>
   Storage mode: double

========================================================================================================

   fBodyBodyAccJerkMagMeanFreq()<br/>
   Storage mode: double

========================================================================================================

   fBodyBodyGyroMagMean()<br/>
   Storage mode: double

========================================================================================================

   fBodyBodyGyroMagSTD()<br/>
   Storage mode: double

========================================================================================================

   fBodyBodyGyroMagMeanFreq()<br/>

   Storage mode: double

========================================================================================================
<br/>
   fBodyBodyGyroJerkMagMean()
   Storage mode: double

========================================================================================================

   fBodyBodyGyroJerkMagSTD()
   Storage mode: double

========================================================================================================

   fBodyBodyGyroJerkMagMeanFreq()
   Storage mode: double

========================================================================================================

   activityType
   Storage mode: integer
   Factor with 6 levels

activityID      activityType  
                                          
   	1 	'LAYING'
   	2 	'SITTING'
   	3 	'STANDING'
   	4 	'WALKING'
   	5 	'WALKING_DOWNSTAIRS'
   	6 	'WALKING_UPSTAIRS'

