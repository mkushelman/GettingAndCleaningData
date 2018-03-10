Project for Getting and Cleaning Data
=====================================

The purpose of the project
--------------------------

The purpose is to demonstrate an ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

You will be required to submit:

  1. a tidy data set as described below 
  2. a link to a Github repository with your script for performing the analysis
  3. a code book that describes the variables, the data, and any transformations or work 
     that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. 
This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - 
see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced 
algorithms to attract new users. 

The data linked to from the course website represent data collected from the accelerometers 
from the Samsung Galaxy S smartphone. A full description is [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.

[Here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) are the data for the project:

You should create one R script called run_analysis.R that does the following.

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
Steps
-----

  1. Write and run the DownloadData.R script
  2. Update the DownloadData.R file to DownloadData.Rmd file and knit it to HTML file
  3. Write and run the run_analysis.R script
  4. Update the run_analysis.R file to run_analysis.Rmd file and knit it to HTML file
  5. Write the makeCodebook.Rmd
  6. Add the last chunk (#10) into run_analysis.Rmd and execute this chank 
