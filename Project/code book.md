# Code book
## Pre-requisition
Program `GetData.r` downloads the project data set 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
to the local file `Dataset.zip` and unzips it in to `Dataset` subdirectory of the working directory.
## Program `run_analysis.r` actions
### Step 1. Loading data from the disk into memory


### Step 2. Defining column names containing the mean and standard deviation

### Step 3. Merging the training and the test sets into one data set


The purpose is to demonstrate an ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

You will be required to submit: 
  1) a tidy data set as described below;
  2) a link to a Github repository with your script for performing the analysis;
  3) a code book that describes the variables, the data, and any transformations or work.

That you performed to clean up the data called CodeBook.md. 


You should also include a README.md in the repo with your scripts. 
This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - 
see for example this [article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/ "Title"). 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced 
algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers 
from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

